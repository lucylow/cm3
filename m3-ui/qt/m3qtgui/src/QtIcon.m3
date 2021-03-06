(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtIcon;


FROM QtStringList IMPORT QStringList;
FROM QtSize IMPORT QSize;
FROM QtPixmap IMPORT QPixmap;
FROM QGuiStubs IMPORT QIconEngineV2, QIconEngine, QPainter;
IMPORT QtIconRaw;
FROM QtRect IMPORT QRect;
FROM QtNamespace IMPORT AlignmentFlag;


IMPORT WeakRef;
FROM QtByteArray IMPORT QByteArray;
FROM QtString IMPORT QString;

PROCEDURE New_QIcon0 (self: QIcon; ): QIcon =
  VAR result: ADDRESS;
  BEGIN
    result := QtIconRaw.New_QIcon0();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon0;

PROCEDURE New_QIcon1 (self: QIcon; pixmap: QPixmap; ): QIcon =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(pixmap.cxxObj, ADDRESS);
  BEGIN
    result := QtIconRaw.New_QIcon1(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon1;

PROCEDURE New_QIcon2 (self: QIcon; other: QIcon; ): QIcon =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(other.cxxObj, ADDRESS);
  BEGIN
    result := QtIconRaw.New_QIcon2(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon2;

PROCEDURE New_QIcon3 (self: QIcon; fileName: TEXT; ): QIcon =
  VAR
    result       : ADDRESS;
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg1tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    result := QtIconRaw.New_QIcon3(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon3;

PROCEDURE New_QIcon4 (self: QIcon; engine: QIconEngine; ): QIcon =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(engine.cxxObj, ADDRESS);
  BEGIN
    result := QtIconRaw.New_QIcon4(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon4;

PROCEDURE New_QIcon5 (self: QIcon; engine: QIconEngineV2; ): QIcon =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(engine.cxxObj, ADDRESS);
  BEGIN
    result := QtIconRaw.New_QIcon5(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);

    RETURN self;
  END New_QIcon5;

PROCEDURE Delete_QIcon (self: QIcon; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.Delete_QIcon(selfAdr);
  END Delete_QIcon;

PROCEDURE QIcon_swap (self, other: QIcon; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(other.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_swap(selfAdr, arg2tmp);
  END QIcon_swap;

PROCEDURE QIcon_pixmap
  (self: QIcon; size: QSize; mode: Mode; state: State; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap(selfAdr, arg2tmp, ORD(mode), ORD(state));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap;

PROCEDURE QIcon_pixmap1 (self: QIcon; size: QSize; mode: Mode; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap1(selfAdr, arg2tmp, ORD(mode));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap1;

PROCEDURE QIcon_pixmap2 (self: QIcon; size: QSize; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap2(selfAdr, arg2tmp);

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap2;

PROCEDURE QIcon_pixmap3
  (self: QIcon; w, h: INTEGER; mode: Mode; state: State; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap3(selfAdr, w, h, ORD(mode), ORD(state));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap3;

PROCEDURE QIcon_pixmap4 (self: QIcon; w, h: INTEGER; mode: Mode; ):
  QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap4(selfAdr, w, h, ORD(mode));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap4;

PROCEDURE QIcon_pixmap5 (self: QIcon; w, h: INTEGER; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap5(selfAdr, w, h);

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap5;

PROCEDURE QIcon_pixmap6
  (self: QIcon; extent: INTEGER; mode: Mode; state: State; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap6(selfAdr, extent, ORD(mode), ORD(state));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap6;

PROCEDURE QIcon_pixmap7 (self: QIcon; extent: INTEGER; mode: Mode; ):
  QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap7(selfAdr, extent, ORD(mode));

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap7;

PROCEDURE QIcon_pixmap8 (self: QIcon; extent: INTEGER; ): QPixmap =
  VAR
    ret    : ADDRESS;
    result : QPixmap;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_pixmap8(selfAdr, extent);

    result := NEW(QPixmap);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_pixmap8;

PROCEDURE QIcon_actualSize
  (self: QIcon; size: QSize; mode: Mode; state: State; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret :=
      QtIconRaw.QIcon_actualSize(selfAdr, arg2tmp, ORD(mode), ORD(state));

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_actualSize;

PROCEDURE QIcon_actualSize1 (self: QIcon; size: QSize; mode: Mode; ):
  QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_actualSize1(selfAdr, arg2tmp, ORD(mode));

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_actualSize1;

PROCEDURE QIcon_actualSize2 (self: QIcon; size: QSize; ): QSize =
  VAR
    ret    : ADDRESS;
    result : QSize;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_actualSize2(selfAdr, arg2tmp);

    result := NEW(QSize);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QIcon_actualSize2;

PROCEDURE QIcon_name (self: QIcon; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.QIcon_name(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QIcon_name;

PROCEDURE QIcon_paint (self     : QIcon;
                       painter  : QPainter;
                       rect     : QRect;
                       alignment: AlignmentFlag;
                       mode     : Mode;
                       state    : State;         ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(rect.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint(
      selfAdr, arg2tmp, arg3tmp, ORD(alignment), ORD(mode), ORD(state));
  END QIcon_paint;

PROCEDURE QIcon_paint1 (self     : QIcon;
                        painter  : QPainter;
                        rect     : QRect;
                        alignment: AlignmentFlag;
                        mode     : Mode;          ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(rect.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint1(
      selfAdr, arg2tmp, arg3tmp, ORD(alignment), ORD(mode));
  END QIcon_paint1;

PROCEDURE QIcon_paint2 (self     : QIcon;
                        painter  : QPainter;
                        rect     : QRect;
                        alignment: AlignmentFlag; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(rect.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint2(selfAdr, arg2tmp, arg3tmp, ORD(alignment));
  END QIcon_paint2;

PROCEDURE QIcon_paint3 (self: QIcon; painter: QPainter; rect: QRect; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
    arg3tmp          := LOOPHOLE(rect.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint3(selfAdr, arg2tmp, arg3tmp);
  END QIcon_paint3;

PROCEDURE QIcon_paint4 (self      : QIcon;
                        painter   : QPainter;
                        x, y, w, h: INTEGER;
                        alignment : AlignmentFlag;
                        mode      : Mode;
                        state     : State;         ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint4(
      selfAdr, arg2tmp, x, y, w, h, ORD(alignment), ORD(mode), ORD(state));
  END QIcon_paint4;

PROCEDURE QIcon_paint5 (self      : QIcon;
                        painter   : QPainter;
                        x, y, w, h: INTEGER;
                        alignment : AlignmentFlag;
                        mode      : Mode;          ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint5(
      selfAdr, arg2tmp, x, y, w, h, ORD(alignment), ORD(mode));
  END QIcon_paint5;

PROCEDURE QIcon_paint6 (self      : QIcon;
                        painter   : QPainter;
                        x, y, w, h: INTEGER;
                        alignment : AlignmentFlag; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint6(selfAdr, arg2tmp, x, y, w, h, ORD(alignment));
  END QIcon_paint6;

PROCEDURE QIcon_paint7
  (self: QIcon; painter: QPainter; x, y, w, h: INTEGER; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(painter.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_paint7(selfAdr, arg2tmp, x, y, w, h);
  END QIcon_paint7;

PROCEDURE QIcon_isNull (self: QIcon; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtIconRaw.QIcon_isNull(selfAdr);
  END QIcon_isNull;

PROCEDURE QIcon_isDetached (self: QIcon; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtIconRaw.QIcon_isDetached(selfAdr);
  END QIcon_isDetached;

PROCEDURE QIcon_detach (self: QIcon; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_detach(selfAdr);
  END QIcon_detach;

PROCEDURE QIcon_serialNumber (self: QIcon; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtIconRaw.QIcon_serialNumber(selfAdr);
  END QIcon_serialNumber;

PROCEDURE QIcon_cacheKey (self: QIcon; ): CARDINAL =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtIconRaw.QIcon_cacheKey(selfAdr);
  END QIcon_cacheKey;

PROCEDURE QIcon_addPixmap
  (self: QIcon; pixmap: QPixmap; mode: Mode; state: State; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(pixmap.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addPixmap(selfAdr, arg2tmp, ORD(mode), ORD(state));
  END QIcon_addPixmap;

PROCEDURE QIcon_addPixmap1 (self: QIcon; pixmap: QPixmap; mode: Mode; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(pixmap.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addPixmap1(selfAdr, arg2tmp, ORD(mode));
  END QIcon_addPixmap1;

PROCEDURE QIcon_addPixmap2 (self: QIcon; pixmap: QPixmap; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(pixmap.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addPixmap2(selfAdr, arg2tmp);
  END QIcon_addPixmap2;

PROCEDURE QIcon_addFile
  (self: QIcon; fileName: TEXT; size: QSize; mode: Mode; state: State; ) =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg3tmp                := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addFile(
      selfAdr, arg2tmp, arg3tmp, ORD(mode), ORD(state));
  END QIcon_addFile;

PROCEDURE QIcon_addFile1
  (self: QIcon; fileName: TEXT; size: QSize; mode: Mode; ) =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg3tmp                := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addFile1(selfAdr, arg2tmp, arg3tmp, ORD(mode));
  END QIcon_addFile1;

PROCEDURE QIcon_addFile2 (self: QIcon; fileName: TEXT; size: QSize; ) =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg3tmp                := LOOPHOLE(size.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addFile2(selfAdr, arg2tmp, arg3tmp);
  END QIcon_addFile2;

PROCEDURE QIcon_addFile3 (self: QIcon; fileName: TEXT; ) =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.QIcon_addFile3(selfAdr, arg2tmp);
  END QIcon_addFile3;

PROCEDURE FromTheme (name: TEXT; fallback: QIcon; ): QIcon =
  VAR
    ret      : ADDRESS;
    result   : QIcon;
    qstr_name          := NEW(QString).initQString(name);
    arg1tmp            := LOOPHOLE(qstr_name.cxxObj, ADDRESS);
    arg2tmp            := LOOPHOLE(fallback.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.FromTheme(arg1tmp, arg2tmp);

    result := NEW(QIcon);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromTheme;

PROCEDURE FromTheme1 (name: TEXT; ): QIcon =
  VAR
    ret      : ADDRESS;
    result   : QIcon;
    qstr_name          := NEW(QString).initQString(name);
    arg1tmp            := LOOPHOLE(qstr_name.cxxObj, ADDRESS);
  BEGIN
    ret := QtIconRaw.FromTheme1(arg1tmp);

    result := NEW(QIcon);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END FromTheme1;

PROCEDURE HasThemeIcon (name: TEXT; ): BOOLEAN =
  VAR
    qstr_name := NEW(QString).initQString(name);
    arg1tmp   := LOOPHOLE(qstr_name.cxxObj, ADDRESS);
  BEGIN
    RETURN QtIconRaw.HasThemeIcon(arg1tmp);
  END HasThemeIcon;

PROCEDURE ThemeSearchPaths (): QStringList =
  VAR
    ret   : ADDRESS;
    result: QStringList;
  BEGIN
    ret := QtIconRaw.ThemeSearchPaths();

    result := NEW(QStringList);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END ThemeSearchPaths;

PROCEDURE SetThemeSearchPaths (searchpath: QStringList; ) =
  VAR arg1tmp := LOOPHOLE(searchpath.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.SetThemeSearchPaths(arg1tmp);
  END SetThemeSearchPaths;

PROCEDURE ThemeName (): TEXT =
  VAR
    ret   : ADDRESS;
    qstr               := NEW(QString);
    ba    : QByteArray;
    result: TEXT;
  BEGIN
    ret := QtIconRaw.ThemeName();

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END ThemeName;

PROCEDURE SetThemeName (path: TEXT; ) =
  VAR
    qstr_path := NEW(QString).initQString(path);
    arg1tmp   := LOOPHOLE(qstr_path.cxxObj, ADDRESS);
  BEGIN
    QtIconRaw.SetThemeName(arg1tmp);
  END SetThemeName;

PROCEDURE Cleanup_QIcon
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QIcon := ref;
  BEGIN
    Delete_QIcon(obj);
  END Cleanup_QIcon;

PROCEDURE Destroy_QIcon (self: QIcon) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QIcon);
  END Destroy_QIcon;

REVEAL
  QIcon = QIconPublic BRANDED OBJECT
          OVERRIDES
            init_0       := New_QIcon0;
            init_1       := New_QIcon1;
            init_2       := New_QIcon2;
            init_3       := New_QIcon3;
            init_4       := New_QIcon4;
            init_5       := New_QIcon5;
            swap         := QIcon_swap;
            pixmap       := QIcon_pixmap;
            pixmap1      := QIcon_pixmap1;
            pixmap2      := QIcon_pixmap2;
            pixmap3      := QIcon_pixmap3;
            pixmap4      := QIcon_pixmap4;
            pixmap5      := QIcon_pixmap5;
            pixmap6      := QIcon_pixmap6;
            pixmap7      := QIcon_pixmap7;
            pixmap8      := QIcon_pixmap8;
            actualSize   := QIcon_actualSize;
            actualSize1  := QIcon_actualSize1;
            actualSize2  := QIcon_actualSize2;
            name         := QIcon_name;
            paint        := QIcon_paint;
            paint1       := QIcon_paint1;
            paint2       := QIcon_paint2;
            paint3       := QIcon_paint3;
            paint4       := QIcon_paint4;
            paint5       := QIcon_paint5;
            paint6       := QIcon_paint6;
            paint7       := QIcon_paint7;
            isNull       := QIcon_isNull;
            isDetached   := QIcon_isDetached;
            detach       := QIcon_detach;
            serialNumber := QIcon_serialNumber;
            cacheKey     := QIcon_cacheKey;
            addPixmap    := QIcon_addPixmap;
            addPixmap1   := QIcon_addPixmap1;
            addPixmap2   := QIcon_addPixmap2;
            addFile      := QIcon_addFile;
            addFile1     := QIcon_addFile1;
            addFile2     := QIcon_addFile2;
            addFile3     := QIcon_addFile3;
            destroyCxx   := Destroy_QIcon;
          END;


BEGIN
END QtIcon.
