(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtErrorMessage;


IMPORT QtErrorMessageRaw;
FROM QtWidget IMPORT QWidget;
FROM QtString IMPORT QString;


IMPORT WeakRef;

PROCEDURE New_QErrorMessage0 (self: QErrorMessage; parent: QWidget; ):
  QErrorMessage =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtErrorMessageRaw.New_QErrorMessage0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QErrorMessage);

    RETURN self;
  END New_QErrorMessage0;

PROCEDURE New_QErrorMessage1 (self: QErrorMessage; ): QErrorMessage =
  VAR result: ADDRESS;
  BEGIN
    result := QtErrorMessageRaw.New_QErrorMessage1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QErrorMessage);

    RETURN self;
  END New_QErrorMessage1;

PROCEDURE Delete_QErrorMessage (self: QErrorMessage; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtErrorMessageRaw.Delete_QErrorMessage(selfAdr);
  END Delete_QErrorMessage;

PROCEDURE QtHandler (): QErrorMessage =
  VAR
    ret   : ADDRESS;
    result: QErrorMessage;
  BEGIN
    ret := QtErrorMessageRaw.QtHandler();

    result := NEW(QErrorMessage);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QtHandler;

PROCEDURE QErrorMessage_showMessage
  (self: QErrorMessage; message: TEXT; ) =
  VAR
    selfAdr     : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_message          := NEW(QString).initQString(message);
    arg2tmp               := LOOPHOLE(qstr_message.cxxObj, ADDRESS);
  BEGIN
    QtErrorMessageRaw.QErrorMessage_showMessage(selfAdr, arg2tmp);
  END QErrorMessage_showMessage;

PROCEDURE QErrorMessage_showMessage1
  (self: QErrorMessage; message, type: TEXT; ) =
  VAR
    selfAdr     : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_message          := NEW(QString).initQString(message);
    arg2tmp               := LOOPHOLE(qstr_message.cxxObj, ADDRESS);
    qstr_type             := NEW(QString).initQString(type);
    arg3tmp               := LOOPHOLE(qstr_type.cxxObj, ADDRESS);
  BEGIN
    QtErrorMessageRaw.QErrorMessage_showMessage1(selfAdr, arg2tmp, arg3tmp);
  END QErrorMessage_showMessage1;

PROCEDURE Cleanup_QErrorMessage
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QErrorMessage := ref;
  BEGIN
    Delete_QErrorMessage(obj);
  END Cleanup_QErrorMessage;

PROCEDURE Destroy_QErrorMessage (self: QErrorMessage) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QErrorMessage);
  END Destroy_QErrorMessage;

REVEAL
  QErrorMessage = QErrorMessagePublic BRANDED OBJECT
                  OVERRIDES
                    init_0       := New_QErrorMessage0;
                    init_1       := New_QErrorMessage1;
                    showMessage  := QErrorMessage_showMessage;
                    showMessage1 := QErrorMessage_showMessage1;
                    destroyCxx   := Destroy_QErrorMessage;
                  END;


BEGIN
END QtErrorMessage.
