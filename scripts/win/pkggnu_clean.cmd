@rem $Id: pkggnu_clean.cmd,v 1.1 2008-01-14 04:41:41 jkrell Exp $

@rem
@rem This is a little helper to bring up NT386GNU.
@rem It cleans out all the INSTALLROOT\pkg\*\NT386GNU directories.
@rem

@setlocal

@call %~dp0clearenv || exit /b 1
@call %~dp0sysinfo || exit /b 1
@call %~dp0pkgcmds || exit /b 1

@echo on
echo INSTALLROOT is %INSTALLROOT%

for /d %%a in (%INSTALLROOT%\pkg\*) do (
    rmdir /q/s %%a\NT386GNU
)
