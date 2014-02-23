(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtList;


IMPORT QtListRaw;


IMPORT WeakRef;
FROM QtString IMPORT QString;
FROM QtByteArray IMPORT QByteArray;

PROCEDURE New_QStringListBase (self: QStringListBase; ): QStringListBase =
  VAR result: ADDRESS;
  BEGIN
    result := QtListRaw.New_QStringListBase();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QStringListBase);

    RETURN self;
  END New_QStringListBase;

PROCEDURE Delete_QStringListBase (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.Delete_QStringListBase(selfAdr);
  END Delete_QStringListBase;

PROCEDURE QStringListBase_size (self: QStringListBase; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_size(selfAdr);
  END QStringListBase_size;

PROCEDURE QStringListBase_detach (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_detach(selfAdr);
  END QStringListBase_detach;

PROCEDURE QStringListBase_detachShared (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_detachShared(selfAdr);
  END QStringListBase_detachShared;

PROCEDURE QStringListBase_isDetached (self: QStringListBase; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_isDetached(selfAdr);
  END QStringListBase_isDetached;

PROCEDURE QStringListBase_setSharable
  (self: QStringListBase; sharable: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_setSharable(selfAdr, sharable);
  END QStringListBase_setSharable;

PROCEDURE QStringListBase_isEmpty (self: QStringListBase; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_isEmpty(selfAdr);
  END QStringListBase_isEmpty;

PROCEDURE QStringListBase_clear (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_clear(selfAdr);
  END QStringListBase_clear;

PROCEDURE QStringListBase_at (self: QStringListBase; i: INTEGER; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_at(selfAdr, i);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_at;

PROCEDURE QStringListBase_reserve
  (self: QStringListBase; size: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_reserve(selfAdr, size);
  END QStringListBase_reserve;

PROCEDURE QStringListBase_append (self: QStringListBase; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_append(selfAdr, arg2tmp);
  END QStringListBase_append;

PROCEDURE QStringListBase_prepend (self: QStringListBase; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_prepend(selfAdr, arg2tmp);
  END QStringListBase_prepend;

PROCEDURE QStringListBase_insert
  (self: QStringListBase; i: INTEGER; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg3tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_insert(selfAdr, i, arg3tmp);
  END QStringListBase_insert;

PROCEDURE QStringListBase_replace
  (self: QStringListBase; i: INTEGER; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg3tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_replace(selfAdr, i, arg3tmp);
  END QStringListBase_replace;

PROCEDURE QStringListBase_removeAt (self: QStringListBase; i: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_removeAt(selfAdr, i);
  END QStringListBase_removeAt;

PROCEDURE QStringListBase_removeAll (self: QStringListBase; t: TEXT; ):
  INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_removeAll(selfAdr, arg2tmp);
  END QStringListBase_removeAll;

PROCEDURE QStringListBase_removeOne (self: QStringListBase; t: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_removeOne(selfAdr, arg2tmp);
  END QStringListBase_removeOne;

PROCEDURE QStringListBase_takeAt (self: QStringListBase; i: INTEGER; ):
  TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_takeAt(selfAdr, i);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_takeAt;

PROCEDURE QStringListBase_takeFirst (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_takeFirst(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_takeFirst;

PROCEDURE QStringListBase_takeLast (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_takeLast(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_takeLast;

PROCEDURE QStringListBase_move
  (self: QStringListBase; from, to: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_move(selfAdr, from, to);
  END QStringListBase_move;

PROCEDURE QStringListBase_indexOf
  (self: QStringListBase; t: TEXT; from: INTEGER; ): INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_indexOf(selfAdr, arg2tmp, from);
  END QStringListBase_indexOf;

PROCEDURE QStringListBase_indexOf1 (self: QStringListBase; t: TEXT; ):
  INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_indexOf1(selfAdr, arg2tmp);
  END QStringListBase_indexOf1;

PROCEDURE QStringListBase_lastIndexOf
  (self: QStringListBase; t: TEXT; from: INTEGER; ): INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_lastIndexOf(selfAdr, arg2tmp, from);
  END QStringListBase_lastIndexOf;

PROCEDURE QStringListBase_lastIndexOf1 (self: QStringListBase; t: TEXT; ):
  INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_lastIndexOf1(selfAdr, arg2tmp);
  END QStringListBase_lastIndexOf1;

PROCEDURE QStringListBase_count (self: QStringListBase; t: TEXT; ):
  INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_count(selfAdr, arg2tmp);
  END QStringListBase_count;

PROCEDURE QStringListBase_count1 (self: QStringListBase; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_count1(selfAdr);
  END QStringListBase_count1;

PROCEDURE QStringListBase_length (self: QStringListBase; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_length(selfAdr);
  END QStringListBase_length;

PROCEDURE QStringListBase_first (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_first(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_first;

PROCEDURE QStringListBase_first1 (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_first1(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_first1;

PROCEDURE QStringListBase_last (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_last(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_last;

PROCEDURE QStringListBase_last1 (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_last1(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_last1;

PROCEDURE QStringListBase_removeFirst (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_removeFirst(selfAdr);
  END QStringListBase_removeFirst;

PROCEDURE QStringListBase_removeLast (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_removeLast(selfAdr);
  END QStringListBase_removeLast;

PROCEDURE QStringListBase_startsWith (self: QStringListBase; t: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_startsWith(selfAdr, arg2tmp);
  END QStringListBase_startsWith;

PROCEDURE QStringListBase_endsWith (self: QStringListBase; t: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_endsWith(selfAdr, arg2tmp);
  END QStringListBase_endsWith;

PROCEDURE QStringListBase_value (self: QStringListBase; i: INTEGER; ):
  TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_value(selfAdr, i);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_value;

PROCEDURE QStringListBase_value1
  (self: QStringListBase; i: INTEGER; defaultValue: TEXT; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_defaultValue := NEW(QString).initQString(defaultValue);
    arg3tmp           := LOOPHOLE(qstr_defaultValue.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_value1(selfAdr, i, arg3tmp);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_value1;

PROCEDURE QStringListBase_push_back (self: QStringListBase; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_push_back(selfAdr, arg2tmp);
  END QStringListBase_push_back;

PROCEDURE QStringListBase_push_front (self: QStringListBase; t: TEXT; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_t           := NEW(QString).initQString(t);
    arg2tmp          := LOOPHOLE(qstr_t.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_push_front(selfAdr, arg2tmp);
  END QStringListBase_push_front;

PROCEDURE QStringListBase_front (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_front(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_front;

PROCEDURE QStringListBase_front1 (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_front1(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_front1;

PROCEDURE QStringListBase_back (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_back(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_back;

PROCEDURE QStringListBase_back1 (self: QStringListBase; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtListRaw.QStringListBase_back1(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QStringListBase_back1;

PROCEDURE QStringListBase_pop_front (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_pop_front(selfAdr);
  END QStringListBase_pop_front;

PROCEDURE QStringListBase_pop_back (self: QStringListBase; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtListRaw.QStringListBase_pop_back(selfAdr);
  END QStringListBase_pop_back;

PROCEDURE QStringListBase_empty (self: QStringListBase; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtListRaw.QStringListBase_empty(selfAdr);
  END QStringListBase_empty;

PROCEDURE Cleanup_QStringListBase
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QStringListBase := ref;
  BEGIN
    Delete_QStringListBase(obj);
  END Cleanup_QStringListBase;

PROCEDURE Destroy_QStringListBase (self: QStringListBase) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QStringListBase);
  END Destroy_QStringListBase;

REVEAL
  QStringListBase = QStringListBasePublic BRANDED OBJECT
                    OVERRIDES
                      QStringListBase := New_QStringListBase;
                      size            := QStringListBase_size;
                      detach          := QStringListBase_detach;
                      detachShared    := QStringListBase_detachShared;
                      isDetached      := QStringListBase_isDetached;
                      setSharable     := QStringListBase_setSharable;
                      isEmpty         := QStringListBase_isEmpty;
                      clear           := QStringListBase_clear;
                      at              := QStringListBase_at;
                      reserve         := QStringListBase_reserve;
                      append          := QStringListBase_append;
                      prepend         := QStringListBase_prepend;
                      insert          := QStringListBase_insert;
                      replace         := QStringListBase_replace;
                      removeAt        := QStringListBase_removeAt;
                      removeAll       := QStringListBase_removeAll;
                      removeOne       := QStringListBase_removeOne;
                      takeAt          := QStringListBase_takeAt;
                      takeFirst       := QStringListBase_takeFirst;
                      takeLast        := QStringListBase_takeLast;
                      move            := QStringListBase_move;
                      indexOf         := QStringListBase_indexOf;
                      indexOf1        := QStringListBase_indexOf1;
                      lastIndexOf     := QStringListBase_lastIndexOf;
                      lastIndexOf1    := QStringListBase_lastIndexOf1;
                      count           := QStringListBase_count;
                      count1          := QStringListBase_count1;
                      length          := QStringListBase_length;
                      first           := QStringListBase_first;
                      first1          := QStringListBase_first1;
                      last            := QStringListBase_last;
                      last1           := QStringListBase_last1;
                      removeFirst     := QStringListBase_removeFirst;
                      removeLast      := QStringListBase_removeLast;
                      startsWith      := QStringListBase_startsWith;
                      endsWith        := QStringListBase_endsWith;
                      value           := QStringListBase_value;
                      value1          := QStringListBase_value1;
                      push_back       := QStringListBase_push_back;
                      push_front      := QStringListBase_push_front;
                      front           := QStringListBase_front;
                      front1          := QStringListBase_front1;
                      back            := QStringListBase_back;
                      back1           := QStringListBase_back1;
                      pop_front       := QStringListBase_pop_front;
                      pop_back        := QStringListBase_pop_back;
                      empty           := QStringListBase_empty;
                      destroyCxx      := Destroy_QStringListBase;
                    END;


BEGIN
END QtList.
