(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtImageRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QImage0 *>
PROCEDURE New_QImage0 (): QImage;

<* EXTERNAL New_QImage1 *>
PROCEDURE New_QImage1 (size: ADDRESS; format: C.int; ): QImage;

<* EXTERNAL New_QImage2 *>
PROCEDURE New_QImage2 (width, height, format: C.int; ): QImage;

<* EXTERNAL New_QImage3 *>
PROCEDURE New_QImage3 (data: ADDRESS; width, height, format: C.int; ):
  QImage;

<* EXTERNAL New_QImage4 *>
PROCEDURE New_QImage4 (data: ADDRESS; width, height, format: C.int; ):
  QImage;

<* EXTERNAL New_QImage5 *>
PROCEDURE New_QImage5
  (data: ADDRESS; width, height, bytesPerLine, format: C.int; ): QImage;

<* EXTERNAL New_QImage6 *>
PROCEDURE New_QImage6
  (data: ADDRESS; width, height, bytesPerLine, format: C.int; ): QImage;

<* EXTERNAL New_QImage7 *>
PROCEDURE New_QImage7 (fileName: ADDRESS; format: C.char_star; ): QImage;

<* EXTERNAL New_QImage8 *>
PROCEDURE New_QImage8 (fileName: ADDRESS; ): QImage;

<* EXTERNAL New_QImage9 *>
PROCEDURE New_QImage9 (fileName, format: C.char_star; ): QImage;

<* EXTERNAL New_QImage10 *>
PROCEDURE New_QImage10 (fileName: C.char_star; ): QImage;

<* EXTERNAL New_QImage11 *>
PROCEDURE New_QImage11 (arg1: ADDRESS; ): QImage;

<* EXTERNAL Delete_QImage *>
PROCEDURE Delete_QImage (self: QImage; );

<* EXTERNAL QImage_swap *>
PROCEDURE QImage_swap (self: QImage; other: ADDRESS; );

<* EXTERNAL QImage_isNull *>
PROCEDURE QImage_isNull (self: QImage; ): BOOLEAN;

<* EXTERNAL QImage_devType *>
PROCEDURE QImage_devType (self: QImage; ): C.int;

<* EXTERNAL QImage_detach *>
PROCEDURE QImage_detach (self: QImage; );

<* EXTERNAL QImage_isDetached *>
PROCEDURE QImage_isDetached (self: QImage; ): BOOLEAN;

<* EXTERNAL QImage_copy *>
PROCEDURE QImage_copy (self: QImage; rect: ADDRESS; ): ADDRESS;

<* EXTERNAL QImage_copy1 *>
PROCEDURE QImage_copy1 (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_copy2 *>
PROCEDURE QImage_copy2 (self: QImage; x, y, w, h: C.int; ): ADDRESS;

<* EXTERNAL QImage_format *>
PROCEDURE QImage_format (self: QImage; ): C.int;

<* EXTERNAL QImage_convertToFormat *>
PROCEDURE QImage_convertToFormat (self: QImage; f, flags: C.int; ):
  ADDRESS;

<* EXTERNAL QImage_convertToFormat1 *>
PROCEDURE QImage_convertToFormat1 (self: QImage; f: C.int; ): ADDRESS;

<* EXTERNAL QImage_width *>
PROCEDURE QImage_width (self: QImage; ): C.int;

<* EXTERNAL QImage_height *>
PROCEDURE QImage_height (self: QImage; ): C.int;

<* EXTERNAL QImage_size *>
PROCEDURE QImage_size (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_rect *>
PROCEDURE QImage_rect (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_depth *>
PROCEDURE QImage_depth (self: QImage; ): C.int;

<* EXTERNAL QImage_colorCount *>
PROCEDURE QImage_colorCount (self: QImage; ): C.int;

<* EXTERNAL QImage_bitPlaneCount *>
PROCEDURE QImage_bitPlaneCount (self: QImage; ): C.int;

<* EXTERNAL QImage_color *>
PROCEDURE QImage_color (self: QImage; i: C.int; ): C.unsigned_int;

<* EXTERNAL QImage_setColor *>
PROCEDURE QImage_setColor (self: QImage; i: C.int; c: C.unsigned_int; );

<* EXTERNAL QImage_setColorCount *>
PROCEDURE QImage_setColorCount (self: QImage; arg2: C.int; );

<* EXTERNAL QImage_allGray *>
PROCEDURE QImage_allGray (self: QImage; ): BOOLEAN;

<* EXTERNAL QImage_isGrayscale *>
PROCEDURE QImage_isGrayscale (self: QImage; ): BOOLEAN;

<* EXTERNAL QImage_bits *>
PROCEDURE QImage_bits (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_bits1 *>
PROCEDURE QImage_bits1 (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_constBits *>
PROCEDURE QImage_constBits (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_byteCount *>
PROCEDURE QImage_byteCount (self: QImage; ): C.int;

<* EXTERNAL QImage_scanLine *>
PROCEDURE QImage_scanLine (self: QImage; arg2: C.int; ): ADDRESS;

<* EXTERNAL QImage_scanLine1 *>
PROCEDURE QImage_scanLine1 (self: QImage; arg2: C.int; ): ADDRESS;

<* EXTERNAL QImage_constScanLine *>
PROCEDURE QImage_constScanLine (self: QImage; arg2: C.int; ): ADDRESS;

<* EXTERNAL QImage_bytesPerLine *>
PROCEDURE QImage_bytesPerLine (self: QImage; ): C.int;

<* EXTERNAL QImage_valid *>
PROCEDURE QImage_valid (self: QImage; x, y: C.int; ): BOOLEAN;

<* EXTERNAL QImage_valid1 *>
PROCEDURE QImage_valid1 (self: QImage; pt: ADDRESS; ): BOOLEAN;

<* EXTERNAL QImage_pixelIndex *>
PROCEDURE QImage_pixelIndex (self: QImage; x, y: C.int; ): C.int;

<* EXTERNAL QImage_pixelIndex1 *>
PROCEDURE QImage_pixelIndex1 (self: QImage; pt: ADDRESS; ): C.int;

<* EXTERNAL QImage_pixel *>
PROCEDURE QImage_pixel (self: QImage; x, y: C.int; ): C.unsigned_int;

<* EXTERNAL QImage_pixel1 *>
PROCEDURE QImage_pixel1 (self: QImage; pt: ADDRESS; ): C.unsigned_int;

<* EXTERNAL QImage_setPixel *>
PROCEDURE QImage_setPixel
  (self: QImage; x, y: C.int; index_or_rgb: C.unsigned_int; );

<* EXTERNAL QImage_setPixel1 *>
PROCEDURE QImage_setPixel1
  (self: QImage; pt: ADDRESS; index_or_rgb: C.unsigned_int; );

<* EXTERNAL QImage_fill *>
PROCEDURE QImage_fill (self: QImage; pixel: C.unsigned_int; );

<* EXTERNAL QImage_fill1 *>
PROCEDURE QImage_fill1 (self: QImage; color: ADDRESS; );

<* EXTERNAL QImage_fill2 *>
PROCEDURE QImage_fill2 (self: QImage; color: C.int; );

<* EXTERNAL QImage_hasAlphaChannel *>
PROCEDURE QImage_hasAlphaChannel (self: QImage; ): BOOLEAN;

<* EXTERNAL QImage_setAlphaChannel *>
PROCEDURE QImage_setAlphaChannel (self: QImage; alphaChannel: ADDRESS; );

<* EXTERNAL QImage_alphaChannel *>
PROCEDURE QImage_alphaChannel (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_createAlphaMask *>
PROCEDURE QImage_createAlphaMask (self: QImage; flags: C.int; ): ADDRESS;

<* EXTERNAL QImage_createAlphaMask1 *>
PROCEDURE QImage_createAlphaMask1 (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_createHeuristicMask *>
PROCEDURE QImage_createHeuristicMask (self: QImage; clipTight: BOOLEAN; ):
  ADDRESS;

<* EXTERNAL QImage_createHeuristicMask1 *>
PROCEDURE QImage_createHeuristicMask1 (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_createMaskFromColor *>
PROCEDURE QImage_createMaskFromColor
  (self: QImage; color: C.unsigned_int; mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_createMaskFromColor1 *>
PROCEDURE QImage_createMaskFromColor1
  (self: QImage; color: C.unsigned_int; ): ADDRESS;

<* EXTERNAL QImage_scaled *>
PROCEDURE QImage_scaled (self: QImage; w, h, aspectMode, mode: C.int; ):
  ADDRESS;

<* EXTERNAL QImage_scaled1 *>
PROCEDURE QImage_scaled1 (self: QImage; w, h, aspectMode: C.int; ):
  ADDRESS;

<* EXTERNAL QImage_scaled2 *>
PROCEDURE QImage_scaled2 (self: QImage; w, h: C.int; ): ADDRESS;

<* EXTERNAL QImage_scaled3 *>
PROCEDURE QImage_scaled3
  (self: QImage; s: ADDRESS; aspectMode, mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_scaled4 *>
PROCEDURE QImage_scaled4 (self: QImage; s: ADDRESS; aspectMode: C.int; ):
  ADDRESS;

<* EXTERNAL QImage_scaled5 *>
PROCEDURE QImage_scaled5 (self: QImage; s: ADDRESS; ): ADDRESS;

<* EXTERNAL QImage_scaledToWidth *>
PROCEDURE QImage_scaledToWidth (self: QImage; w, mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_scaledToWidth1 *>
PROCEDURE QImage_scaledToWidth1 (self: QImage; w: C.int; ): ADDRESS;

<* EXTERNAL QImage_scaledToHeight *>
PROCEDURE QImage_scaledToHeight (self: QImage; h, mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_scaledToHeight1 *>
PROCEDURE QImage_scaledToHeight1 (self: QImage; h: C.int; ): ADDRESS;

<* EXTERNAL QImage_transformed *>
PROCEDURE QImage_transformed
  (self: QImage; matrix: ADDRESS; mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_transformed1 *>
PROCEDURE QImage_transformed1 (self: QImage; matrix: ADDRESS; ): ADDRESS;

<* EXTERNAL Image_TrueMatrix *>
PROCEDURE Image_TrueMatrix (arg1: ADDRESS; w, h: C.int; ): ADDRESS;

<* EXTERNAL QImage_transformed2 *>
PROCEDURE QImage_transformed2
  (self: QImage; matrix: ADDRESS; mode: C.int; ): ADDRESS;

<* EXTERNAL QImage_transformed3 *>
PROCEDURE QImage_transformed3 (self: QImage; matrix: ADDRESS; ): ADDRESS;

<* EXTERNAL Image_TrueMatrix1 *>
PROCEDURE Image_TrueMatrix1 (arg1: ADDRESS; w, h: C.int; ): ADDRESS;

<* EXTERNAL QImage_mirrored *>
PROCEDURE QImage_mirrored
  (self: QImage; horizontally, vertically: BOOLEAN; ): ADDRESS;

<* EXTERNAL QImage_mirrored1 *>
PROCEDURE QImage_mirrored1 (self: QImage; horizontally: BOOLEAN; ):
  ADDRESS;

<* EXTERNAL QImage_mirrored2 *>
PROCEDURE QImage_mirrored2 (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_rgbSwapped *>
PROCEDURE QImage_rgbSwapped (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_invertPixels *>
PROCEDURE QImage_invertPixels (self: QImage; arg2: C.int; );

<* EXTERNAL QImage_invertPixels1 *>
PROCEDURE QImage_invertPixels1 (self: QImage; );

<* EXTERNAL QImage_load *>
PROCEDURE QImage_load
  (self: QImage; device: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_load1 *>
PROCEDURE QImage_load1
  (self: QImage; fileName: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_load2 *>
PROCEDURE QImage_load2 (self: QImage; fileName: ADDRESS; ): BOOLEAN;

<* EXTERNAL QImage_loadFromData *>
PROCEDURE QImage_loadFromData
  (self: QImage; buf: ADDRESS; len: C.int; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_loadFromData1 *>
PROCEDURE QImage_loadFromData1 (self: QImage; buf: ADDRESS; len: C.int; ):
  BOOLEAN;

<* EXTERNAL QImage_loadFromData2 *>
PROCEDURE QImage_loadFromData2
  (self: QImage; data: ADDRESS; aformat: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_loadFromData3 *>
PROCEDURE QImage_loadFromData3 (self: QImage; data: ADDRESS; ): BOOLEAN;

<* EXTERNAL QImage_save *>
PROCEDURE QImage_save
  (self: QImage; fileName: ADDRESS; format: C.char_star; quality: C.int; ):
  BOOLEAN;

<* EXTERNAL QImage_save1 *>
PROCEDURE QImage_save1
  (self: QImage; fileName: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_save2 *>
PROCEDURE QImage_save2 (self: QImage; fileName: ADDRESS; ): BOOLEAN;

<* EXTERNAL QImage_save3 *>
PROCEDURE QImage_save3
  (self: QImage; device: ADDRESS; format: C.char_star; quality: C.int; ):
  BOOLEAN;

<* EXTERNAL QImage_save4 *>
PROCEDURE QImage_save4
  (self: QImage; device: ADDRESS; format: C.char_star; ): BOOLEAN;

<* EXTERNAL QImage_save5 *>
PROCEDURE QImage_save5 (self: QImage; device: ADDRESS; ): BOOLEAN;

<* EXTERNAL Image_FromData *>
PROCEDURE Image_FromData
  (data: ADDRESS; size: C.int; format: C.char_star; ): ADDRESS;

<* EXTERNAL Image_FromData1 *>
PROCEDURE Image_FromData1 (data: ADDRESS; size: C.int; ): ADDRESS;

<* EXTERNAL Image_FromData2 *>
PROCEDURE Image_FromData2 (data: ADDRESS; format: C.char_star; ): ADDRESS;

<* EXTERNAL Image_FromData3 *>
PROCEDURE Image_FromData3 (data: ADDRESS; ): ADDRESS;

<* EXTERNAL QImage_serialNumber *>
PROCEDURE QImage_serialNumber (self: QImage; ): C.int;

<* EXTERNAL QImage_cacheKey *>
PROCEDURE QImage_cacheKey (self: QImage; ): C.unsigned_long;

<* EXTERNAL QImage_paintEngine *>
PROCEDURE QImage_paintEngine (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_dotsPerMeterX *>
PROCEDURE QImage_dotsPerMeterX (self: QImage; ): C.int;

<* EXTERNAL QImage_dotsPerMeterY *>
PROCEDURE QImage_dotsPerMeterY (self: QImage; ): C.int;

<* EXTERNAL QImage_setDotsPerMeterX *>
PROCEDURE QImage_setDotsPerMeterX (self: QImage; arg2: C.int; );

<* EXTERNAL QImage_setDotsPerMeterY *>
PROCEDURE QImage_setDotsPerMeterY (self: QImage; arg2: C.int; );

<* EXTERNAL QImage_offset *>
PROCEDURE QImage_offset (self: QImage; ): ADDRESS;

<* EXTERNAL QImage_setOffset *>
PROCEDURE QImage_setOffset (self: QImage; arg2: ADDRESS; );

<* EXTERNAL QImage_data_ptr *>
PROCEDURE QImage_data_ptr (self: QImage; ): ADDRESS;

TYPE QImage = ADDRESS;

END QtImageRaw.
