#! /usr/bin/env python
# $Id: make-dist.py,v 1.11 2008-01-07 12:39:13 jkrell Exp $

import sys
import os.path
import os
import shutil
import pylib
from pylib import *

def Echo(a):
    print("")
    print("=============================================================================")
    print(a)
    print("=============================================================================")
    print("")

def Run(a):
    return (os.system(a) == 0)
    # @call :IncrementLogCounter
    # @echo.
    # setlocal
    # remove some extraneous spaces that come
    # concating possibly empty variables with
    # spaces between them
    # set x=%*
    # set x=%x:  = %
    # set x=%x:  = %
    # echo %TIME%>>%STAGE%\logs\%LogCounter%_%~n1.log
    # echo.>> %STAGE%\logs\all.log
    # echo.>> %STAGE%\logs\%LogCounter%_%~n1.log
    # echo %x% >> %STAGE%\logs\%LogCounter%_%~n1.log
    # echo %x% ^>^> %STAGE%\logs\%LogCounter%_%~n1.log
    # call %x% >> %STAGE%\logs\%LogCounter%_%~n1.log or (
    #     echo %TIME%>>%STAGE%\logs\%LogCounter%_%~n1.log
    #     type %STAGE%\logs\%LogCounter%_%~n1.log >> %STAGE%\logs\all.log
	#     echo ERROR: %x% failed
	#     exit /b 1
    # )
    # echo %TIME%>>%STAGE%\logs\%LogCounter%_%~n1.log
    # type %STAGE%\logs\%LogCounter%_%~n1.log >> %STAGE%\logs\all.log
    # endlocal
    # goto :eof

def MakeArchive(PackageSetName, Command, Extension):

    InstallRoot = FormInstallRoot(PackageSetName)
    SymbolsRoot = FormInstallRoot(PackageSetName) + "-symbols"

    os.chdir(InstallRoot)
    CopyFile(os.path.join(Root, "m3-sys", "COPYRIGHT-CMASS"), os.path.curdir) or FatalError()
    os.chdir(os.path.pardir)
    CreateDirectory(SymbolsRoot)

    #
    # delete .m3 and .m3web files, they aren't needed
    # move .pdb files into the symbols directory
    # TBD: use strip and --add-gnu-debuglink
    #
    def Callback(Arg, Directory, Names):
        if (os.path.basename(Directory).endswith("-symbols")):
            return
        for Name in Names:
            Extension = os.path.splitext(Name)[1].lower()
            if (Extension == ".pdb"):
                shutil.move(os.path.join(Directory, Name), SymbolsRoot)
            elif (Extension == ".m3"
                    or Extension == ".m3web"
                    # Can be useful for bootstrapping standalone cm3.exe in future.
                    #or Extension == ".sa
                    ):
                DeleteFile(os.path.join(Directory, Name))

    os.path.walk(os.path.curdir, Callback, None)

    Symbols = FormArchiveName(PackageSetName, "-symbols." + Extension)
    DeleteFile(Symbols)
    Run(Command + " " + Symbols + " " + SymbolsRoot)

    Archive = FormArchiveName(PackageSetName, "." + Extension)
    DeleteFile(Archive)
    Run(Command + " " + Archive + " " + InstallRoot)

    if (Extension == "zip"):
        #
        # HACK ALERT
        #
        # ON MY MACHINE \bin\unzipsfx.exe is a
        # Win32 x86 unzip self extracting archive prefix,
        # with an MS-DOS unzip self extracting archive prefix for a stub.
        # As such, you can do several things with it.
        #  Run it under MS-DOS. However long file names are probably used.
        #  Run it from a Windows command line.
        #  Open it with various archive utilities, including maybe Explorer (might need to rename it to end in .zip).
        #
        # .tar.bz2 is generally significantly smaller, but .zip is currently used
        # for ease of Windows users.
        #
        # I built this unzipsfx from the publically available source. That source
        # and building of it is not in the CM3 tree, and probably should be
        # if this path is to be used. In fact, that license may make
        # these tools favorable over tar/bzip2, despite the compression loss.
        #

        SelfExtractingExe = os.path.join(STAGE, "cm3-min-" + M3OSTYPE + "-" + Target + "-" + CM3VERSION + EXE)
        DeleteFile(SelfExtractingExe)
        if (not os.path.isfile("\\bin\\unzipsfx" + EXE)):
            print("\\bin\\unzipsfx" + EXE + " does not exist, skipping making self extracting .zip")
        else:
            open(SelfExtractingExe, "wb").write(open("\\bin\\unzipsfx" + EXE, "rb").read() + open(Archive, "rb").read())
            Run("zip -A " + SelfExtractingExe)

def Zip(PackageSetName):
    MakeArchive(PackageSetName, "zip -9 -r -D -X", "zip")

def TarGzip(PackageSetName):
    MakeArchive(PackageSetName, "tar cfvz", "tar.gz")

def TarBzip2(PackageSetName):
    MakeArchive(PackageSetName, "tar cfvj", "tar.bz2")

def CopyCompiler(From, To):
    #
    # Copy the compiler from one InstallRoot to another, possibly having cleaned out the intermediate directories.
    # The config file always comes right out of the source tree.
    #
    FromBin = os.path.join(From, "bin")
    ToBin = os.path.join(To, "bin")
    CreateDirectory(ToBin)
    CopyFile           (os.path.join(FromBin, "cm3" + EXE), ToBin) or FatalError()
    CopyFile           (GetConfig(Root, Target), os.path.join(ToBin, "cm3.cfg")) or FatalError()
    CopyFileIfExist(os.path.join(FromBin, "cm3cg" + EXE), ToBin) or FatalError()
    if (os.name == "nt"):
        CopyFileIfExist(os.path.join(FromBin, "cm3.pdb"         ), ToBin) or FatalError()
        CopyFileIfExist(os.path.join(FromBin, "cm3.exe.manifest"), ToBin) or FatalError()
    CopyMklib(From, To) or FatalError()
    return True

def CopyMklib(From, To):
    #
    # Copy mklib from one InstallRoot to another, possibly having cleaned out the intermediate directories.
    #
    if (Target == "NT386"):
        From = os.path.join(From, "bin")
        To = os.path.join(To, "bin")
        CreateDirectory(To)
        CopyFile(os.path.join(From, "mklib" + EXE), To) or FatalError()
        CopyFileIfExist(os.path.join(From, "mklib.pdb"         ), To) or FatalError()
        CopyFileIfExist(os.path.join(From, "mklib.exe.manifest"), To) or FatalError()
    return True

def BuildShip(Packages):
    # This is more indirect than necessary.
    CreateSkel()
    return Do("buildship", Packages)

def RealClean(Packages):
    # This is more indirect than necessary.
    #
    CreateSkel()
    #
    # RealClean is mostly unnecessary and a nuisance for make-dist.
    # Either STAGE is unique and there's nothing to clean,
    # or STAGE is explicit and not unique and incrementality
    # is desired. Er, then again, this doesn't touch STAGE,
    # it touches the output directories in the source tree.
    #
    #return True
    return Do("realclean", Packages)

def CreateSkel():
    for a in ("bin", "lib", "pkg"):
        CreateDirectory(os.path.join(InstallRoot, a)) or FatalError()
    return True

def Do(Command, Packages):
    # This is more indirect than necessary.
    return DoPackage(["", Command], Packages)

def FatalError():
    # logs don't work yet
    #print("ERROR: see " + Logs)
    print("fatal error")
    sys.exit(1)

# Start with the installed cm3.
# cm3 should not be set in the environment, or should be set to merely "cm3" or "cm3.exe"

if os.getenv("TEMP") and not os.path.exists(os.getenv("TEMP")):
    os.makedirs(os.getenv("TEMP"))

if (not STAGE):
    tempfile.tempdir = os.path.join(tempfile.gettempdir(), "cm3", "make-dist")
    CreateDirectory(tempfile.tempdir)
    STAGE = tempfile.mkdtemp()
    debug("STAGE")

# doesn't work yet
#Logs = os.path.join(STAGE, "logs")
#os.makedirs(Logs)

#LogCounter = 1
    
InstallRoot_Previous = InstallRoot

InstallRoot_CompilerWithPrevious = os.path.join(STAGE, "compiler_with_previous")
InstallRoot_CompilerWithSelf = os.path.join(STAGE, "compiler_with_self")

#
# The way this SHOULD work is we build the union of all desired,
# and then pick and chose from the output into the .zip/.tar.bz2.
# For now though, we only build min.
#
def FormInstallRoot(PackageSetName):
    return os.path.join(STAGE, "cm3-" + PackageSetName + "-" + M3OSTYPE + "-" + Target + "-" + CM3VERSION)

def FormArchiveName(PackageSetName, Suffix):
    return os.path.join(STAGE, "cm3-" + PackageSetName + "-" + M3OSTYPE + "-" + Target + "-" + CM3VERSION + Suffix)

InstallRoot_Min = FormInstallRoot("min")
InstallRoot_Standard = FormInstallRoot("std")
InstallRoot_Core = FormInstallRoot("core")
InstallRoot_Base = FormInstallRoot("base")

InstallRoots = [
    InstallRoot_Min,
    InstallRoot_Standard,
    InstallRoot_Core,
    InstallRoot_Base,
   ]

OriginalLIB = os.getenv("LIB")
if OriginalLIB:
    OriginalLIB = (os.path.pathsep + OriginalLIB)

OriginalPATH = os.getenv("PATH")
if OriginalPATH:
    OriginalPATH = (os.path.pathsep + OriginalPATH)

# for incremental runs to recover at this step..
# if /i "%1" == "goto_tar" shift & goto :TarGzip
# if /i "%1" == "goto_min" shift & goto :min
# if /i "%1" == "goto_zip" shift & goto :Zip
# if /i "%1" == "goto_tarbzip2" shift & goto :TarBzip2

# ------------------------------------------------------------------------------------------------------------------------
Echo("build new compiler with old compiler and old runtime (%(InstallRoot_Previous)s to %(InstallRoot_CompilerWithPrevious)s)" % vars())
# ------------------------------------------------------------------------------------------------------------------------

# build just compiler this pass, not the runtime

Packages = [
    "import-libs",
    "m3middle",
    "m3linker",
    "m3front",
    "m3quake",
    "m3objfile",
    "m3back",
    "m3staloneback",
    "m3objfile",
    "m3cc",
    "cm3",
    ]

def CopyRecursive(From, To):
    CopyCommand = "xcopy /fiverdh "
    ToParent = os.path.dirname(To)
    if (os.name != "nt"):
        CopyCommand = "cp --preserve  --recursive "
    print("mkdir " + ToParent)
    print(CopyCommand + From + " " + To)
    if os.path.isdir(To):
        shutil.rmtree(To)
    else:
        CreateDirectory(ToParent)
    shutil.copytree(From, To)
    return True

#
# copy over runtime package store from old to new
# It would be nice to make this optionally incremental.
#
RuntimeToCopy = ["libm3", "m3core"]
for a in RuntimeToCopy:
    CopyRecursive(
        os.path.join(InstallRoot, "pkg", a),
        os.path.join(InstallRoot_CompilerWithPrevious, "pkg", a)) or FatalError()

if Target != "NT386":
    NewLib = os.path.join(InstallRoot_CompilerWithPrevious, "lib")
    CreateDirectory(NewLib)
    for a in glob.glob(os.path.join(InstallRoot, "lib", "libm3gcdefs.*")):
        CopyFile(a, NewLib) or FatalError()

#
# cm3 is run out of %path%, but mklib is not, so we have to copy it..
#
CopyMklib(InstallRoot, InstallRoot_CompilerWithPrevious) or FatalError()

def Setup(ExistingCompilerRoot, NewRoot):
    global InstallRoot
    InstallRoot = NewRoot
    os.environ["INSTALLROOT"] = NewRoot
    if (OriginalLIB): # This is Windows-only thing.
        os.environ["LIB"] = os.path.join(NewRoot, "lib") + OriginalLIB
    os.environ["PATH"] = (os.path.join(NewRoot, "bin") + OriginalPATH)

    if ((NewRoot != InstallRoot_CompilerWithPrevious)
            and (NewRoot != InstallRoot_CompilerWithSelf)
            and (NewRoot != InstallRoot_Min)):
        CopyRecursive(InstallRoot_Min, NewRoot) or FatalError()
    else:
        CopyCompiler(ExistingCompilerRoot, NewRoot) or FatalError()

    reload(pylib) or FatalError()

Setup(InstallRoot, InstallRoot_CompilerWithPrevious)

RealClean(Packages) or FatalError()
BuildShip(Packages) or FatalError()
ShipCompiler() or FatalError()
RealClean(Packages) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------
Echo("build new compiler and new runtime with new compiler (%(InstallRoot_CompilerWithPrevious)s to %(InstallRoot_CompilerWithSelf)s)" % vars())
# ----------------------------------------------------------------------------------------------------------------------------------

Packages = [
    "import-libs",
    "m3core",
    "libm3",
    "m3bundle",
    "m3middle",
    "m3objfile",
    "m3linker",
    "m3back",
    "m3staloneback",
    "m3front",
    "m3quake",
    "m3cc",
    "cm3",
    "mklib",
    ]

Setup(InstallRoot_CompilerWithPrevious, InstallRoot_CompilerWithSelf)
RealClean(Packages) or FatalError()
BuildShip(Packages) or FatalError()
ShipCompiler() or FatalError()

RealClean(pylib.PackageSets["all"]) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------
Echo("build minimal packages with new compiler")
# ----------------------------------------------------------------------------------------------------------------------------------

#:min

Setup(InstallRoot_CompilerWithSelf, InstallRoot_Min)
Packages = pylib.PackageSets["min"]
#RealClean(Packages) or FatalError()
BuildShip(Packages) or FatalError()
#RealClean(Packages) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------
Echo("build core packages with new compiler")
# ----------------------------------------------------------------------------------------------------------------------------------

if False:

    print("skipping..")

else:

    Setup(InstallRoot_CompilerWithSelf, InstallRoot_Core)
    Packages = pylib.PackageSets["core"]
    #RealClean(Packages) or FatalError()
    BuildShip(Packages) or FatalError()
    #RealClean(Packages) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------
Echo("build base packages with new compiler")
# ----------------------------------------------------------------------------------------------------------------------------------

if False:

    print("skipping..")

else:

    Setup(InstallRoot_CompilerWithSelf, InstallRoot_Base)
    Packages = pylib.PackageSets["base"]
    #RealClean(Packages) or FatalError()
    BuildShip(Packages) or FatalError()
    #RealClean(Packages) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------
Echo("build standard packages with new compiler")
# ----------------------------------------------------------------------------------------------------------------------------------

if False:

    print("skipping..")

else:

    Setup(InstallRoot_CompilerWithSelf, InstallRoot_Standard)
    Packages = pylib.PackageSets["std"]
    #RealClean(Packages) or FatalError()
    BuildShip(Packages) or FatalError()
    #RealClean(Packages) or FatalError()

# ----------------------------------------------------------------------------------------------------------------------------------

for PackageSetName in ["min", "std", "core", "base"]:
    Zip(PackageSetName)
    TarBzip2(PackageSetName)

print("%s: Success." % os.path.basename(sys.argv[0]))
for a in glob.glob(os.path.join(STAGE, "*")):
    if (a and os.path.isfile(a)):
        print("Output is " + a)
print("Much intermediate state remains in " + STAGE)
sys.exit(0)

