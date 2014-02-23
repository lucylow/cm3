(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtTabBar;


FROM QtIcon IMPORT QIcon;
IMPORT QtTabBarRaw;
FROM QtSize IMPORT QSize;
FROM QtColor IMPORT QColor;
FROM QtWidget IMPORT QWidget;
FROM QtString IMPORT QString;
FROM QtPoint IMPORT QPoint;
FROM QtNamespace IMPORT TextElideMode;
FROM QtRect IMPORT QRect;


IMPORT WeakRef;
FROM QtByteArray IMPORT QByteArray;

PROCEDURE New_QTabBar0 (self: QTabBar; parent: QWidget; ): QTabBar =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(parent.cxxObj, ADDRESS);
  BEGIN
    result := QtTabBarRaw.New_QTabBar0(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTabBar);

    RETURN self;
  END New_QTabBar0;

PROCEDURE New_QTabBar1 (self: QTabBar; ): QTabBar =
  VAR result: ADDRESS;
  BEGIN
    result := QtTabBarRaw.New_QTabBar1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QTabBar);

    RETURN self;
  END New_QTabBar1;

PROCEDURE Delete_QTabBar (self: QTabBar; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.Delete_QTabBar(selfAdr);
  END Delete_QTabBar;

PROCEDURE QTabBar_shape (self: QTabBar; ): Shape =
  VAR
    ret    : INTEGER;
    result : Shape;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_shape(selfAdr);
    result := VAL(ret, Shape);
    RETURN result;
  END QTabBar_shape;

PROCEDURE QTabBar_setShape (self: QTabBar; shape: Shape; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setShape(selfAdr, ORD(shape));
  END QTabBar_setShape;

PROCEDURE QTabBar_addTab (self: QTabBar; text: TEXT; ): INTEGER =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg2tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_addTab(selfAdr, arg2tmp);
  END QTabBar_addTab;

PROCEDURE QTabBar_addTab1 (self: QTabBar; icon: QIcon; text: TEXT; ):
  INTEGER =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp            := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg3tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_addTab1(selfAdr, arg2tmp, arg3tmp);
  END QTabBar_addTab1;

PROCEDURE QTabBar_insertTab (self: QTabBar; index: INTEGER; text: TEXT; ):
  INTEGER =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg3tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_insertTab(selfAdr, index, arg3tmp);
  END QTabBar_insertTab;

PROCEDURE QTabBar_insertTab1
  (self: QTabBar; index: INTEGER; icon: QIcon; text: TEXT; ): INTEGER =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg3tmp            := LOOPHOLE(icon.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg4tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    RETURN
      QtTabBarRaw.QTabBar_insertTab1(selfAdr, index, arg3tmp, arg4tmp);
  END QTabBar_insertTab1;

PROCEDURE QTabBar_removeTab (self: QTabBar; index: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_removeTab(selfAdr, index);
  END QTabBar_removeTab;

PROCEDURE QTabBar_moveTab (self: QTabBar; from, to: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_moveTab(selfAdr, from, to);
  END QTabBar_moveTab;

PROCEDURE QTabBar_isTabEnabled (self: QTabBar; index: INTEGER; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_isTabEnabled(selfAdr, index);
  END QTabBar_isTabEnabled;

PROCEDURE QTabBar_setTabEnabled
  (self: QTabBar; index: INTEGER; arg3: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabEnabled(selfAdr, index, arg3);
  END QTabBar_setTabEnabled;

PROCEDURE QTabBar_tabText (self: QTabBar; index: INTEGER; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabText(selfAdr, index);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QTabBar_tabText;

PROCEDURE QTabBar_setTabText
  (self: QTabBar; index: INTEGER; text: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg3tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabText(selfAdr, index, arg3tmp);
  END QTabBar_setTabText;

PROCEDURE QTabBar_tabTextColor (self: QTabBar; index: INTEGER; ): QColor =
  VAR
    ret    : ADDRESS;
    result : QColor;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabTextColor(selfAdr, index);

    result := NEW(QColor);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_tabTextColor;

PROCEDURE QTabBar_setTabTextColor
  (self: QTabBar; index: INTEGER; color: QColor; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(color.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabTextColor(selfAdr, index, arg3tmp);
  END QTabBar_setTabTextColor;

PROCEDURE QTabBar_tabIcon (self: QTabBar; index: INTEGER; ): QIcon =
  VAR
    ret    : ADDRESS;
    result : QIcon;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabIcon(selfAdr, index);

    result := NEW(QIcon);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_tabIcon;

PROCEDURE QTabBar_setTabIcon
  (self: QTabBar; index: INTEGER; icon: QIcon; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(icon.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabIcon(selfAdr, index, arg3tmp);
  END QTabBar_setTabIcon;

PROCEDURE QTabBar_elideMode (self: QTabBar; ): TextElideMode =
  VAR
    ret    : INTEGER;
    result : TextElideMode;
    selfAdr: ADDRESS       := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_elideMode(selfAdr);
    result := VAL(ret, TextElideMode);
    RETURN result;
  END QTabBar_elideMode;

PROCEDURE QTabBar_setElideMode (self: QTabBar; arg2: TextElideMode; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setElideMode(selfAdr, ORD(arg2));
  END QTabBar_setElideMode;

PROCEDURE QTabBar_setTabToolTip
  (self: QTabBar; index: INTEGER; tip: TEXT; ) =
  VAR
    selfAdr : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_tip          := NEW(QString).initQString(tip);
    arg3tmp           := LOOPHOLE(qstr_tip.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabToolTip(selfAdr, index, arg3tmp);
  END QTabBar_setTabToolTip;

PROCEDURE QTabBar_tabToolTip (self: QTabBar; index: INTEGER; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabToolTip(selfAdr, index);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QTabBar_tabToolTip;

PROCEDURE QTabBar_setTabWhatsThis
  (self: QTabBar; index: INTEGER; text: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_text          := NEW(QString).initQString(text);
    arg3tmp            := LOOPHOLE(qstr_text.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabWhatsThis(selfAdr, index, arg3tmp);
  END QTabBar_setTabWhatsThis;

PROCEDURE QTabBar_tabWhatsThis (self: QTabBar; index: INTEGER; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabWhatsThis(selfAdr, index);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QTabBar_tabWhatsThis;

PROCEDURE QTabBar_tabRect (self: QTabBar; index: INTEGER; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabRect(selfAdr, index);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_tabRect;

PROCEDURE QTabBar_tabAt (self: QTabBar; pos: QPoint; ): INTEGER =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(pos.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_tabAt(selfAdr, arg2tmp);
  END QTabBar_tabAt;

PROCEDURE QTabBar_currentIndex (self: QTabBar; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_currentIndex(selfAdr);
  END QTabBar_currentIndex;

PROCEDURE QTabBar_count (self: QTabBar; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_count(selfAdr);
  END QTabBar_count;

PROCEDURE QTabBar_sizeHint (self: QTabBar; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_sizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_sizeHint;

PROCEDURE QTabBar_minimumSizeHint (self: QTabBar; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_minimumSizeHint(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_minimumSizeHint;

PROCEDURE QTabBar_setDrawBase (self: QTabBar; drawTheBase: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setDrawBase(selfAdr, drawTheBase);
  END QTabBar_setDrawBase;

PROCEDURE QTabBar_drawBase (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_drawBase(selfAdr);
  END QTabBar_drawBase;

PROCEDURE QTabBar_iconSize (self: QTabBar; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_iconSize(selfAdr);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_iconSize;

PROCEDURE QTabBar_setIconSize (self: QTabBar; size: QSize; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setIconSize(selfAdr, arg2tmp);
  END QTabBar_setIconSize;

PROCEDURE QTabBar_usesScrollButtons (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_usesScrollButtons(selfAdr);
  END QTabBar_usesScrollButtons;

PROCEDURE QTabBar_setUsesScrollButtons
  (self: QTabBar; useButtons: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setUsesScrollButtons(selfAdr, useButtons);
  END QTabBar_setUsesScrollButtons;

PROCEDURE QTabBar_tabsClosable (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_tabsClosable(selfAdr);
  END QTabBar_tabsClosable;

PROCEDURE QTabBar_setTabsClosable (self: QTabBar; closable: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabsClosable(selfAdr, closable);
  END QTabBar_setTabsClosable;

PROCEDURE QTabBar_setTabButton (self    : QTabBar;
                                index   : INTEGER;
                                position: ButtonPosition;
                                widget  : QWidget;        ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg4tmp          := LOOPHOLE(widget.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setTabButton(
      selfAdr, index, ORD(position), arg4tmp);
  END QTabBar_setTabButton;

PROCEDURE QTabBar_tabButton
  (self: QTabBar; index: INTEGER; position: ButtonPosition; ): QWidget =
  VAR
    ret    : ADDRESS;
    result : QWidget;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_tabButton(selfAdr, index, ORD(position));

    result := NEW(QWidget);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QTabBar_tabButton;

PROCEDURE QTabBar_selectionBehaviorOnRemove (self: QTabBar; ):
  SelectionBehavior =
  VAR
    ret    : INTEGER;
    result : SelectionBehavior;
    selfAdr: ADDRESS           := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtTabBarRaw.QTabBar_selectionBehaviorOnRemove(selfAdr);
    result := VAL(ret, SelectionBehavior);
    RETURN result;
  END QTabBar_selectionBehaviorOnRemove;

PROCEDURE QTabBar_setSelectionBehaviorOnRemove
  (self: QTabBar; behavior: SelectionBehavior; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setSelectionBehaviorOnRemove(
      selfAdr, ORD(behavior));
  END QTabBar_setSelectionBehaviorOnRemove;

PROCEDURE QTabBar_expanding (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_expanding(selfAdr);
  END QTabBar_expanding;

PROCEDURE QTabBar_setExpanding (self: QTabBar; enabled: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setExpanding(selfAdr, enabled);
  END QTabBar_setExpanding;

PROCEDURE QTabBar_isMovable (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_isMovable(selfAdr);
  END QTabBar_isMovable;

PROCEDURE QTabBar_setMovable (self: QTabBar; movable: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setMovable(selfAdr, movable);
  END QTabBar_setMovable;

PROCEDURE QTabBar_documentMode (self: QTabBar; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtTabBarRaw.QTabBar_documentMode(selfAdr);
  END QTabBar_documentMode;

PROCEDURE QTabBar_setDocumentMode (self: QTabBar; set: BOOLEAN; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setDocumentMode(selfAdr, set);
  END QTabBar_setDocumentMode;

PROCEDURE QTabBar_setCurrentIndex (self: QTabBar; index: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtTabBarRaw.QTabBar_setCurrentIndex(selfAdr, index);
  END QTabBar_setCurrentIndex;

PROCEDURE Cleanup_QTabBar
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QTabBar := ref;
  BEGIN
    Delete_QTabBar(obj);
  END Cleanup_QTabBar;

PROCEDURE Destroy_QTabBar (self: QTabBar) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QTabBar);
  END Destroy_QTabBar;

REVEAL
  QTabBar =
    QTabBarPublic BRANDED OBJECT
    OVERRIDES
      init_0                       := New_QTabBar0;
      init_1                       := New_QTabBar1;
      shape                        := QTabBar_shape;
      setShape                     := QTabBar_setShape;
      addTab                       := QTabBar_addTab;
      addTab1                      := QTabBar_addTab1;
      insertTab                    := QTabBar_insertTab;
      insertTab1                   := QTabBar_insertTab1;
      removeTab                    := QTabBar_removeTab;
      moveTab                      := QTabBar_moveTab;
      isTabEnabled                 := QTabBar_isTabEnabled;
      setTabEnabled                := QTabBar_setTabEnabled;
      tabText                      := QTabBar_tabText;
      setTabText                   := QTabBar_setTabText;
      tabTextColor                 := QTabBar_tabTextColor;
      setTabTextColor              := QTabBar_setTabTextColor;
      tabIcon                      := QTabBar_tabIcon;
      setTabIcon                   := QTabBar_setTabIcon;
      elideMode                    := QTabBar_elideMode;
      setElideMode                 := QTabBar_setElideMode;
      setTabToolTip                := QTabBar_setTabToolTip;
      tabToolTip                   := QTabBar_tabToolTip;
      setTabWhatsThis              := QTabBar_setTabWhatsThis;
      tabWhatsThis                 := QTabBar_tabWhatsThis;
      tabRect                      := QTabBar_tabRect;
      tabAt                        := QTabBar_tabAt;
      currentIndex                 := QTabBar_currentIndex;
      count                        := QTabBar_count;
      sizeHint                     := QTabBar_sizeHint;
      minimumSizeHint              := QTabBar_minimumSizeHint;
      setDrawBase                  := QTabBar_setDrawBase;
      drawBase                     := QTabBar_drawBase;
      iconSize                     := QTabBar_iconSize;
      setIconSize                  := QTabBar_setIconSize;
      usesScrollButtons            := QTabBar_usesScrollButtons;
      setUsesScrollButtons         := QTabBar_setUsesScrollButtons;
      tabsClosable                 := QTabBar_tabsClosable;
      setTabsClosable              := QTabBar_setTabsClosable;
      setTabButton                 := QTabBar_setTabButton;
      tabButton                    := QTabBar_tabButton;
      selectionBehaviorOnRemove    := QTabBar_selectionBehaviorOnRemove;
      setSelectionBehaviorOnRemove := QTabBar_setSelectionBehaviorOnRemove;
      expanding                    := QTabBar_expanding;
      setExpanding                 := QTabBar_setExpanding;
      isMovable                    := QTabBar_isMovable;
      setMovable                   := QTabBar_setMovable;
      documentMode                 := QTabBar_documentMode;
      setDocumentMode              := QTabBar_setDocumentMode;
      setCurrentIndex              := QTabBar_setCurrentIndex;
      destroyCxx                   := Destroy_QTabBar;
    END;


BEGIN
END QtTabBar.
