(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtDialog;


FROM QtSize IMPORT QSize;
IMPORT QtDialogRaw;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT WindowTypes, Orientation;


IMPORT WeakRef;

PROCEDURE New_QDialog0 (self: QDialog; parent: QWidget; f: WindowTypes; ):
  QDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDialogRaw.New_QDialog0(arg1tmp, ORD(f));

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDialog);

    RETURN self;
  END New_QDialog0;

PROCEDURE New_QDialog1 (self: QDialog; parent: QWidget; ): QDialog =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtDialogRaw.New_QDialog1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDialog);

    RETURN self;
  END New_QDialog1;

PROCEDURE New_QDialog2 (self: QDialog; ): QDialog =
  VAR result: ADDRESS;
  BEGIN
    result := QtDialogRaw.New_QDialog2();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QDialog);

    RETURN self;
  END New_QDialog2;

PROCEDURE Delete_QDialog (self: QDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.Delete_QDialog(selfAdr);
  END Delete_QDialog;

PROCEDURE QDialog_result (self: QDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDialogRaw.QDialog_result(selfAdr);
  END QDialog_result;

PROCEDURE QDialog_setVisible (self: QDialog; visible: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setVisible(selfAdr, visible);
  END QDialog_setVisible;

PROCEDURE QDialog_setOrientation
  (self: QDialog; orientation: Orientation; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setOrientation(selfAdr, ORD(orientation));
  END QDialog_setOrientation;

PROCEDURE QDialog_orientation (self: QDialog; ): Orientation =
  VAR
    ret    : INTEGER;
    result : Orientation;
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDialogRaw.QDialog_orientation(selfAdr);
    result := VAL(ret, Orientation);
    RETURN result;
  END QDialog_orientation;

PROCEDURE QDialog_setExtension (self: QDialog; extension: QWidget; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(extension.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setExtension(selfAdr, arg2tmp);
  END QDialog_setExtension;

PROCEDURE QDialog_extension (self: QDialog; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDialogRaw.QDialog_extension(selfAdr);

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDialog_extension;

PROCEDURE QDialog_sizeHint (self: QDialog; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDialogRaw.QDialog_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDialog_sizeHint;

PROCEDURE QDialog_minimumSizeHint (self: QDialog; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtDialogRaw.QDialog_minimumSizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QDialog_minimumSizeHint;

PROCEDURE QDialog_setSizeGripEnabled (self: QDialog; arg2: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setSizeGripEnabled(selfAdr, arg2);
  END QDialog_setSizeGripEnabled;

PROCEDURE QDialog_isSizeGripEnabled (self: QDialog; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDialogRaw.QDialog_isSizeGripEnabled(selfAdr);
  END QDialog_isSizeGripEnabled;

PROCEDURE QDialog_setModal (self: QDialog; modal: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setModal(selfAdr, modal);
  END QDialog_setModal;

PROCEDURE QDialog_setResult (self: QDialog; r: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_setResult(selfAdr, r);
  END QDialog_setResult;

PROCEDURE QDialog_open (self: QDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_open(selfAdr);
  END QDialog_open;

PROCEDURE QDialog_exec (self: QDialog; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtDialogRaw.QDialog_exec(selfAdr);
  END QDialog_exec;

PROCEDURE QDialog_done (self: QDialog; arg2: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_done(selfAdr, arg2);
  END QDialog_done;

PROCEDURE QDialog_accept (self: QDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_accept(selfAdr);
  END QDialog_accept;

PROCEDURE QDialog_reject (self: QDialog; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_reject(selfAdr);
  END QDialog_reject;

PROCEDURE QDialog_showExtension (self: QDialog; arg2: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtDialogRaw.QDialog_showExtension(selfAdr, arg2);
  END QDialog_showExtension;

PROCEDURE Cleanup_QDialog
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QDialog := ref;
  BEGIN
    Delete_QDialog(obj);
  END Cleanup_QDialog;

PROCEDURE Destroy_QDialog (self: QDialog) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QDialog);
  END Destroy_QDialog;

REVEAL
  QDialog = QDialogPublic BRANDED OBJECT
            OVERRIDES
              init_0             := New_QDialog0;
              init_1             := New_QDialog1;
              init_2             := New_QDialog2;
              result             := QDialog_result;
              setVisible         := QDialog_setVisible;
              setOrientation     := QDialog_setOrientation;
              orientation        := QDialog_orientation;
              setExtension       := QDialog_setExtension;
              extension          := QDialog_extension;
              sizeHint           := QDialog_sizeHint;
              minimumSizeHint    := QDialog_minimumSizeHint;
              setSizeGripEnabled := QDialog_setSizeGripEnabled;
              isSizeGripEnabled  := QDialog_isSizeGripEnabled;
              setModal           := QDialog_setModal;
              setResult          := QDialog_setResult;
              open               := QDialog_open;
              exec               := QDialog_exec;
              done               := QDialog_done;
              accept             := QDialog_accept;
              reject             := QDialog_reject;
              showExtension      := QDialog_showExtension;
              destroyCxx         := Destroy_QDialog;
            END;


BEGIN
END QtDialog.
