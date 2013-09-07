(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

UNSAFE MODULE QtPicture;


FROM QtPaintEngine IMPORT QPaintEngine;
FROM QtByteArray IMPORT QByteArray;
IMPORT M3toC;
FROM QGuiStubs IMPORT QPainter, QIODevice;
IMPORT QtPictureRaw;
IMPORT Ctypes AS C;
FROM QtRect IMPORT QRect;


IMPORT WeakRef;
FROM QtString IMPORT QString;

PROCEDURE New_QPicture0 (self: QPicture; formatVersion: INTEGER; ):
  QPicture =
  VAR result: ADDRESS;
  BEGIN
    result := QtPictureRaw.New_QPicture0(formatVersion);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPicture);

    RETURN self;
  END New_QPicture0;

PROCEDURE New_QPicture1 (self: QPicture; ): QPicture =
  VAR result: ADDRESS;
  BEGIN
    result := QtPictureRaw.New_QPicture1();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPicture);

    RETURN self;
  END New_QPicture1;

PROCEDURE New_QPicture2 (self: QPicture; arg1: QPicture; ): QPicture =
  VAR
    result : ADDRESS;
    arg1tmp          := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    result := QtPictureRaw.New_QPicture2(arg1tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPicture);

    RETURN self;
  END New_QPicture2;

PROCEDURE Delete_QPicture (self: QPicture; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.Delete_QPicture(selfAdr);
  END Delete_QPicture;

PROCEDURE QPicture_isNull (self: QPicture; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_isNull(selfAdr);
  END QPicture_isNull;

PROCEDURE QPicture_devType (self: QPicture; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_devType(selfAdr);
  END QPicture_devType;

PROCEDURE QPicture_size (self: QPicture; ): CARDINAL =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_size(selfAdr);
  END QPicture_size;

PROCEDURE QPicture_data (self: QPicture; ): TEXT =
  VAR
    result : C.char_star;
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    result := QtPictureRaw.QPicture_data(selfAdr);

    RETURN M3toC.CopyStoT(result);
  END QPicture_data;

PROCEDURE QPicture_setData (self: QPicture; data: TEXT; size: CARDINAL; ) =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(data);
    QtPictureRaw.QPicture_setData(selfAdr, arg2tmp, size);


  END QPicture_setData;

PROCEDURE QPicture_play (self: QPicture; p: QPainter; ): BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(p.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_play(selfAdr, arg2tmp);
  END QPicture_play;

PROCEDURE QPicture_load (self: QPicture; dev: QIODevice; format: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp              := LOOPHOLE(dev.cxxObj, ADDRESS);
    arg3tmp: C.char_star;
    result : BOOLEAN;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.QPicture_load(selfAdr, arg2tmp, arg3tmp);


    RETURN result;
  END QPicture_load;

PROCEDURE QPicture_load1 (self: QPicture; dev: QIODevice; ): BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(dev.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_load1(selfAdr, arg2tmp);
  END QPicture_load1;

PROCEDURE QPicture_load2 (self: QPicture; fileName, format: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr      : ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName              := NEW(QString).initQString(fileName);
    arg2tmp                    := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg3tmp      : C.char_star;
    result       : BOOLEAN;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.QPicture_load2(selfAdr, arg2tmp, arg3tmp);


    RETURN result;
  END QPicture_load2;

PROCEDURE QPicture_load3 (self: QPicture; fileName: TEXT; ): BOOLEAN =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_load3(selfAdr, arg2tmp);
  END QPicture_load3;

PROCEDURE QPicture_save (self: QPicture; dev: QIODevice; format: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp              := LOOPHOLE(dev.cxxObj, ADDRESS);
    arg3tmp: C.char_star;
    result : BOOLEAN;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.QPicture_save(selfAdr, arg2tmp, arg3tmp);


    RETURN result;
  END QPicture_save;

PROCEDURE QPicture_save1 (self: QPicture; dev: QIODevice; ): BOOLEAN =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(dev.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_save1(selfAdr, arg2tmp);
  END QPicture_save1;

PROCEDURE QPicture_save2 (self: QPicture; fileName, format: TEXT; ):
  BOOLEAN =
  VAR
    selfAdr      : ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName              := NEW(QString).initQString(fileName);
    arg2tmp                    := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg3tmp      : C.char_star;
    result       : BOOLEAN;
  BEGIN
    arg3tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.QPicture_save2(selfAdr, arg2tmp, arg3tmp);


    RETURN result;
  END QPicture_save2;

PROCEDURE QPicture_save3 (self: QPicture; fileName: TEXT; ): BOOLEAN =
  VAR
    selfAdr      : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_fileName          := NEW(QString).initQString(fileName);
    arg2tmp                := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_save3(selfAdr, arg2tmp);
  END QPicture_save3;

PROCEDURE QPicture_boundingRect (self: QPicture; ): QRect =
  VAR
    ret    : ADDRESS;
    result : QRect;
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPicture_boundingRect(selfAdr);

    result := NEW(QRect);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QPicture_boundingRect;

PROCEDURE QPicture_setBoundingRect (self: QPicture; r: QRect; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(r.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPicture_setBoundingRect(selfAdr, arg2tmp);
  END QPicture_setBoundingRect;

PROCEDURE QPicture_swap (self, other: QPicture; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(other.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPicture_swap(selfAdr, arg2tmp);
  END QPicture_swap;

PROCEDURE QPicture_detach (self: QPicture; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPicture_detach(selfAdr);
  END QPicture_detach;

PROCEDURE QPicture_isDetached (self: QPicture; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_isDetached(selfAdr);
  END QPicture_isDetached;

PROCEDURE PicFormat (fileName: TEXT; ): TEXT =
  VAR
    result       : C.char_star;
    qstr_fileName              := NEW(QString).initQString(fileName);
    arg1tmp                    := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    result := QtPictureRaw.PicFormat(arg1tmp);

    RETURN M3toC.CopyStoT(result);
  END PicFormat;

PROCEDURE QPicture_paintEngine (self: QPicture; ): QPaintEngine =
  VAR
    ret    : ADDRESS;
    result : QPaintEngine;
    selfAdr: ADDRESS      := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPicture_paintEngine(selfAdr);

    result := NEW(QPaintEngine);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QPicture_paintEngine;

PROCEDURE QPicture_data_ptr (self: QPicture; ): UNTRACED REF CHAR =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPicture_data_ptr(selfAdr);
  END QPicture_data_ptr;

PROCEDURE Cleanup_QPicture
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QPicture := ref;
  BEGIN
    Delete_QPicture(obj);
  END Cleanup_QPicture;

PROCEDURE Destroy_QPicture (self: QPicture) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QPicture);
  END Destroy_QPicture;

REVEAL
  QPicture = QPicturePublic BRANDED OBJECT
             OVERRIDES
               init_0          := New_QPicture0;
               init_1          := New_QPicture1;
               init_2          := New_QPicture2;
               isNull          := QPicture_isNull;
               devType         := QPicture_devType;
               size            := QPicture_size;
               data            := QPicture_data;
               setData         := QPicture_setData;
               play            := QPicture_play;
               load            := QPicture_load;
               load1           := QPicture_load1;
               load2           := QPicture_load2;
               load3           := QPicture_load3;
               save            := QPicture_save;
               save1           := QPicture_save1;
               save2           := QPicture_save2;
               save3           := QPicture_save3;
               boundingRect    := QPicture_boundingRect;
               setBoundingRect := QPicture_setBoundingRect;
               swap            := QPicture_swap;
               detach          := QPicture_detach;
               isDetached      := QPicture_isDetached;
               paintEngine     := QPicture_paintEngine;
               data_ptr        := QPicture_data_ptr;
               destroyCxx      := Destroy_QPicture;
             END;

PROCEDURE New_QPictureIO0 (self: QPictureIO; ): QPictureIO =
  VAR result: ADDRESS;
  BEGIN
    result := QtPictureRaw.New_QPictureIO0();

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPictureIO);

    RETURN self;
  END New_QPictureIO0;

PROCEDURE New_QPictureIO1
  (self: QPictureIO; ioDevice: QIODevice; format: TEXT; ): QPictureIO =
  VAR
    result : ADDRESS;
    arg1tmp              := LOOPHOLE(ioDevice.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.New_QPictureIO1(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPictureIO);



    RETURN self;
  END New_QPictureIO1;

PROCEDURE New_QPictureIO2 (self: QPictureIO; fileName, format: TEXT; ):
  QPictureIO =
  VAR
    result       : ADDRESS;
    qstr_fileName              := NEW(QString).initQString(fileName);
    arg1tmp                    := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
    arg2tmp      : C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(format);
    result := QtPictureRaw.New_QPictureIO2(arg1tmp, arg2tmp);

    self.cxxObj := result;
    EVAL WeakRef.FromRef(self, Cleanup_QPictureIO);



    RETURN self;
  END New_QPictureIO2;

PROCEDURE Delete_QPictureIO (self: QPictureIO; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.Delete_QPictureIO(selfAdr);
  END Delete_QPictureIO;

PROCEDURE QPictureIO_picture (self: QPictureIO; ): QPicture =
  VAR
    ret    : ADDRESS;
    result : QPicture;
    selfAdr: ADDRESS  := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPictureIO_picture(selfAdr);

    result := NEW(QPicture);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QPictureIO_picture;

PROCEDURE QPictureIO_status (self: QPictureIO; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPictureIO_status(selfAdr);
  END QPictureIO_status;

PROCEDURE QPictureIO_format (self: QPictureIO; ): TEXT =
  VAR
    result : C.char_star;
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    result := QtPictureRaw.QPictureIO_format(selfAdr);

    RETURN M3toC.CopyStoT(result);
  END QPictureIO_format;

PROCEDURE QPictureIO_ioDevice (self: QPictureIO; ): QIODevice =
  VAR
    ret    : ADDRESS;
    result : QIODevice;
    selfAdr: ADDRESS   := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPictureIO_ioDevice(selfAdr);

    result := NEW(QIODevice);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END QPictureIO_ioDevice;

PROCEDURE QPictureIO_fileName (self: QPictureIO; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPictureIO_fileName(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QPictureIO_fileName;

PROCEDURE QPictureIO_quality (self: QPictureIO; ): INTEGER =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPictureIO_quality(selfAdr);
  END QPictureIO_quality;

PROCEDURE QPictureIO_description (self: QPictureIO; ): TEXT =
  VAR
    ret    : ADDRESS;
    qstr                := NEW(QString);
    ba     : QByteArray;
    result : TEXT;
    selfAdr: ADDRESS    := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.QPictureIO_description(selfAdr);

    qstr.cxxObj := ret;
    ba := qstr.toLocal8Bit();
    result := ba.data();

    RETURN result;
  END QPictureIO_description;

PROCEDURE QPictureIO_parameters (self: QPictureIO; ): TEXT =
  VAR
    result : C.char_star;
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    result := QtPictureRaw.QPictureIO_parameters(selfAdr);

    RETURN M3toC.CopyStoT(result);
  END QPictureIO_parameters;

PROCEDURE QPictureIO_gamma (self: QPictureIO; ): REAL =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPictureIO_gamma(selfAdr);
  END QPictureIO_gamma;

PROCEDURE QPictureIO_setPicture (self: QPictureIO; arg2: QPicture; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setPicture(selfAdr, arg2tmp);
  END QPictureIO_setPicture;

PROCEDURE QPictureIO_setStatus (self: QPictureIO; arg2: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setStatus(selfAdr, arg2);
  END QPictureIO_setStatus;

PROCEDURE QPictureIO_setFormat (self: QPictureIO; arg2: TEXT; ) =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(arg2);
    QtPictureRaw.QPictureIO_setFormat(selfAdr, arg2tmp);


  END QPictureIO_setFormat;

PROCEDURE QPictureIO_setIODevice (self: QPictureIO; arg2: QIODevice; ) =
  VAR
    selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp          := LOOPHOLE(arg2.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setIODevice(selfAdr, arg2tmp);
  END QPictureIO_setIODevice;

PROCEDURE QPictureIO_setFileName (self: QPictureIO; arg2: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_arg2          := NEW(QString).initQString(arg2);
    arg2tmp            := LOOPHOLE(qstr_arg2.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setFileName(selfAdr, arg2tmp);
  END QPictureIO_setFileName;

PROCEDURE QPictureIO_setQuality (self: QPictureIO; arg2: INTEGER; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setQuality(selfAdr, arg2);
  END QPictureIO_setQuality;

PROCEDURE QPictureIO_setDescription (self: QPictureIO; arg2: TEXT; ) =
  VAR
    selfAdr  : ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
    qstr_arg2          := NEW(QString).initQString(arg2);
    arg2tmp            := LOOPHOLE(qstr_arg2.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setDescription(selfAdr, arg2tmp);
  END QPictureIO_setDescription;

PROCEDURE QPictureIO_setParameters (self: QPictureIO; arg2: TEXT; ) =
  VAR
    selfAdr: ADDRESS     := LOOPHOLE(self.cxxObj, ADDRESS);
    arg2tmp: C.char_star;
  BEGIN
    arg2tmp := M3toC.CopyTtoS(arg2);
    QtPictureRaw.QPictureIO_setParameters(selfAdr, arg2tmp);


  END QPictureIO_setParameters;

PROCEDURE QPictureIO_setGamma (self: QPictureIO; arg2: REAL; ) =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    QtPictureRaw.QPictureIO_setGamma(selfAdr, arg2);
  END QPictureIO_setGamma;

PROCEDURE QPictureIO_read (self: QPictureIO; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPictureIO_read(selfAdr);
  END QPictureIO_read;

PROCEDURE QPictureIO_write (self: QPictureIO; ): BOOLEAN =
  VAR selfAdr: ADDRESS := LOOPHOLE(self.cxxObj, ADDRESS);
  BEGIN
    RETURN QtPictureRaw.QPictureIO_write(selfAdr);
  END QPictureIO_write;

PROCEDURE PictureFormat (fileName: TEXT; ): QByteArray =
  VAR
    ret          : ADDRESS;
    result       : QByteArray;
    qstr_fileName             := NEW(QString).initQString(fileName);
    arg1tmp                   := LOOPHOLE(qstr_fileName.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.PictureFormat(arg1tmp);

    result := NEW(QByteArray);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END PictureFormat;

PROCEDURE PictureFormat1 (arg1: QIODevice; ): QByteArray =
  VAR
    ret    : ADDRESS;
    result : QByteArray;
    arg1tmp             := LOOPHOLE(arg1.cxxObj, ADDRESS);
  BEGIN
    ret := QtPictureRaw.PictureFormat1(arg1tmp);

    result := NEW(QByteArray);
    result.cxxObj := ret;
    result.destroyCxx();

    RETURN result;
  END PictureFormat1;

PROCEDURE Cleanup_QPictureIO
  (<* UNUSED *> READONLY self: WeakRef.T; ref: REFANY) =
  VAR obj: QPictureIO := ref;
  BEGIN
    Delete_QPictureIO(obj);
  END Cleanup_QPictureIO;

PROCEDURE Destroy_QPictureIO (self: QPictureIO) =
  BEGIN
    EVAL WeakRef.FromRef(self, Cleanup_QPictureIO);
  END Destroy_QPictureIO;

REVEAL
  QPictureIO = QPictureIOPublic BRANDED OBJECT
               OVERRIDES
                 init_0         := New_QPictureIO0;
                 init_1         := New_QPictureIO1;
                 init_2         := New_QPictureIO2;
                 picture        := QPictureIO_picture;
                 status         := QPictureIO_status;
                 format         := QPictureIO_format;
                 ioDevice       := QPictureIO_ioDevice;
                 fileName       := QPictureIO_fileName;
                 quality        := QPictureIO_quality;
                 description    := QPictureIO_description;
                 parameters     := QPictureIO_parameters;
                 gamma          := QPictureIO_gamma;
                 setPicture     := QPictureIO_setPicture;
                 setStatus      := QPictureIO_setStatus;
                 setFormat      := QPictureIO_setFormat;
                 setIODevice    := QPictureIO_setIODevice;
                 setFileName    := QPictureIO_setFileName;
                 setQuality     := QPictureIO_setQuality;
                 setDescription := QPictureIO_setDescription;
                 setParameters  := QPictureIO_setParameters;
                 setGamma       := QPictureIO_setGamma;
                 read           := QPictureIO_read;
                 write          := QPictureIO_write;
                 destroyCxx     := Destroy_QPictureIO;
               END;


BEGIN
END QtPicture.
