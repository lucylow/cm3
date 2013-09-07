(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtPageSetupDialog;


IMPORT QtPageSetupDialogRaw;
FROM QGuiStubs IMPORT QPrinter;
FROM QtObject IMPORT QObject;
IMPORT M3toC;
FROM QtWidget IMPORT QWidget;
IMPORT Ctypes AS C;


IMPORT WeakRef;

PROCEDURE New_QPageSetupDialog0
  (self: QPageSetupDialog; printer: QPrinter; parent: QWidget; ):
  QPageSetupDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(printer.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtPageSetupDialogRaw.New_QPageSetupDialog0(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPageSetupDialog);

    RETURN self;
  END New_QPageSetupDialog0;

PROCEDURE New_QPageSetupDialog1
  (self: QPageSetupDialog; printer: QPrinter; ): QPageSetupDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(printer.cxxObj, ADDRESS);
  BEGIN
    result := QtPageSetupDialogRaw.New_QPageSetupDialog1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPageSetupDialog);

    RETURN self;
  END New_QPageSetupDialog1;

PROCEDURE New_QPageSetupDialog2
  (self: QPageSetupDialog; parent: QWidget; ): QPageSetupDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtPageSetupDialogRaw.New_QPageSetupDialog2(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPageSetupDialog);

    RETURN self;
  END New_QPageSetupDialog2;

PROCEDURE New_QPageSetupDialog3 (self: QPageSetupDialog; ):
  QPageSetupDialog =
  VAR result: ADDRESS;
  BEGIN
    result := QtPageSetupDialogRaw.New_QPageSetupDialog3();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPageSetupDialog);

    RETURN self;
  END New_QPageSetupDialog3;

PROCEDURE QPageSetupDialog_addEnabledOption
  (self: QPageSetupDialog; option: PageSetupDialogOption; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_addEnabledOption(
      selfAdr, ORD(option));
  END QPageSetupDialog_addEnabledOption;

PROCEDURE QPageSetupDialog_setEnabledOptions
  (self   : QPageSetupDialog;
   options: QPageSetupDialog_PageSetupDialogOptions; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_setEnabledOptions(
      selfAdr, ORD(options));
  END QPageSetupDialog_setEnabledOptions;

PROCEDURE QPageSetupDialog_enabledOptions (self: QPageSetupDialog; ):
  QPageSetupDialog_PageSetupDialogOptions =
  VAR
    ret   : INTEGER;
    result: QPageSetupDialog_PageSetupDialogOptions;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPageSetupDialogRaw.QPageSetupDialog_enabledOptions(selfAdr);
    result := VAL(ret, QPageSetupDialog_PageSetupDialogOptions);
    RETURN result;
  END QPageSetupDialog_enabledOptions;

PROCEDURE QPageSetupDialog_isOptionEnabled
  (self: QPageSetupDialog; option: PageSetupDialogOption; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPageSetupDialogRaw.QPageSetupDialog_isOptionEnabled(
             selfAdr, ORD(option));
  END QPageSetupDialog_isOptionEnabled;

PROCEDURE QPageSetupDialog_setOption
  (self: QPageSetupDialog; option: PageSetupDialogOption; on: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_setOption(
      selfAdr, ORD(option), on);
  END QPageSetupDialog_setOption;

PROCEDURE QPageSetupDialog_setOption1
  (self: QPageSetupDialog; option: PageSetupDialogOption; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_setOption1(selfAdr, ORD(option));
  END QPageSetupDialog_setOption1;

PROCEDURE QPageSetupDialog_testOption
  (self: QPageSetupDialog; option: PageSetupDialogOption; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPageSetupDialogRaw.QPageSetupDialog_testOption(
             selfAdr, ORD(option));
  END QPageSetupDialog_testOption;

PROCEDURE QPageSetupDialog_setOptions
  (self   : QPageSetupDialog;
   options: QPageSetupDialog_PageSetupDialogOptions; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_setOptions(selfAdr, ORD(options));
  END QPageSetupDialog_setOptions;

PROCEDURE QPageSetupDialog_options (self: QPageSetupDialog; ):
  QPageSetupDialog_PageSetupDialogOptions =
  VAR
    ret   : INTEGER;
    result: QPageSetupDialog_PageSetupDialogOptions;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPageSetupDialogRaw.QPageSetupDialog_options(selfAdr);
    result := VAL(ret, QPageSetupDialog_PageSetupDialogOptions);
    RETURN result;
  END QPageSetupDialog_options;

PROCEDURE QPageSetupDialog_exec (self: QPageSetupDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPageSetupDialogRaw.QPageSetupDialog_exec(selfAdr);
  END QPageSetupDialog_exec;

PROCEDURE QPageSetupDialog_open0_0 (self: QPageSetupDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.QPageSetupDialog_open0_0(selfAdr);
  END QPageSetupDialog_open0_0;

PROCEDURE QPageSetupDialog_open1
  (self: QPageSetupDialog; receiver: QObject; member: TEXT; ) =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp              := LOOPHOLE(receiver.cxxObj, ADDRESS);
    arg3tmp: C.char_star;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(member);
    QtPageSetupDialogRaw.QPageSetupDialog_open1(selfAdr, arg2tmp, arg3tmp);


  END QPageSetupDialog_open1;

PROCEDURE Delete_QPageSetupDialog (self: QPageSetupDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPageSetupDialogRaw.Delete_QPageSetupDialog(selfAdr);
  END Delete_QPageSetupDialog;

PROCEDURE Cleanup_QPageSetupDialog
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QPageSetupDialog := ref;
  BEGIN
    Delete_QPageSetupDialog(obj);
  END Cleanup_QPageSetupDialog;

PROCEDURE Destroy_QPageSetupDialog (self: QPageSetupDialog) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QPageSetupDialog);
  END Destroy_QPageSetupDialog;

REVEAL
  QPageSetupDialog =
    QPageSetupDialogPublic BRANDED OBJECT
    OVERRIDES
      init_0            := New_QPageSetupDialog0;
      init_1            := New_QPageSetupDialog1;
      init_2            := New_QPageSetupDialog2;
      init_3            := New_QPageSetupDialog3;
      addEnabledOption  := QPageSetupDialog_addEnabledOption;
      setEnabledOptions := QPageSetupDialog_setEnabledOptions;
      enabledOptions    := QPageSetupDialog_enabledOptions;
      isOptionEnabled   := QPageSetupDialog_isOptionEnabled;
      setOption         := QPageSetupDialog_setOption;
      setOption1        := QPageSetupDialog_setOption1;
      testOption        := QPageSetupDialog_testOption;
      setOptions        := QPageSetupDialog_setOptions;
      options           := QPageSetupDialog_options;
      exec              := QPageSetupDialog_exec;
      open0_0           := QPageSetupDialog_open0_0;
      open1             := QPageSetupDialog_open1;
      destroyCxx        := Destroy_QPageSetupDialog;
    END;


BEGIN
END QtPageSetupDialog.
