(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org/).
 * Version 1.3.23
 *
 * Do not make changes to this file unless you know what you are doing --
 * modify the SWIG interface file instead.
 *******************************************************************************)

UNSAFE MODULE PLPlot;

IMPORT PLPlotRaw;
IMPORT M3toC;
IMPORT Ctypes AS C;
IMPORT Fmt;


TYPE
  CallbackM3Data = RECORD
                     callback    : CallbackM3Proc;
                     callbackData: REFANY;
                   END;

PROCEDURE CallbackM3 () =
  BEGIN
  END CallbackM3;

CONST
  tileToChar = ARRAY DirTile OF
                 CHAR{'a', 'b', 'c', 'f', 'g', 'h', 'i', 'l', 'm', 'n',
                      's', 't'};

PROCEDURE SetContLabelFormat (lexp, sigdig: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetContLabelFormat(lexp, sigdig);
  END SetContLabelFormat;

PROCEDURE SetContLabelParam (offset, size, spacing: Float; active: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetContLabelParam(offset, size, spacing, active);
  END SetContLabelParam;

PROCEDURE Advance (page: INTEGER; ) =
  BEGIN
    PLPlotRaw.Advance(page);
  END Advance;

PROCEDURE DrawAxes (x0, y0: Float;
                    xopt  : DirTileSet;
                    xtick : Float;
                    nxsub : INTEGER;
                    yopt  : DirTileSet;
                    ytick : Float;
                    nysub : INTEGER;    ) =
  VAR
    arg3 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg3i: CARDINAL                                 := 0;
    arg6 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg6i: CARDINAL                                 := 0;
  BEGIN
    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN xopt THEN arg3[arg3i] := tileToChar[t]; INC(arg3i); END;
    END;
    arg3[arg3i] := '\000';

    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN yopt THEN arg6[arg6i] := tileToChar[t]; INC(arg6i); END;
    END;
    arg6[arg6i] := '\000';

    PLPlotRaw.DrawAxes(
      x0, y0, arg3[0], xtick, nxsub, arg6[0], ytick, nysub);


  END DrawAxes;

PROCEDURE PlotBins (READONLY x, y: FloatVector; center: INTEGER; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotBins(n, x[0], y[0], center);
  END PlotBins;

PROCEDURE StartPage () =
  BEGIN
    PLPlotRaw.StartPage();
  END StartPage;

PROCEDURE DrawBox (xopt : DirTileSet;
                   xtick: Float;
                   nxsub: INTEGER;
                   yopt : DirTileSet;
                   ytick: Float;
                   nysub: INTEGER;    ) =
  VAR
    arg1 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg1i: CARDINAL                                 := 0;
    arg4 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg4i: CARDINAL                                 := 0;
  BEGIN
    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN xopt THEN arg1[arg1i] := tileToChar[t]; INC(arg1i); END;
    END;
    arg1[arg1i] := '\000';

    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN yopt THEN arg4[arg4i] := tileToChar[t]; INC(arg4i); END;
    END;
    arg4[arg4i] := '\000';

    PLPlotRaw.DrawBox(arg1[0], xtick, nxsub, arg4[0], ytick, nysub);


  END DrawBox;

PROCEDURE DrawBox3D (xopt  : DirTileSet;
                     xlabel: TEXT;
                     xtick : Float;
                     nsubx : INTEGER;
                     yopt  : DirTileSet;
                     ylabel: TEXT;
                     ytick : Float;
                     nsuby : INTEGER;
                     zopt  : DirTileSet;
                     zlabel: TEXT;
                     ztick : Float;
                     nsubz : INTEGER;    ) =
  VAR
    arg1 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg1i: CARDINAL                                 := 0;
    arg2 : C.char_star;
    arg5 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg5i: CARDINAL                                 := 0;
    arg6 : C.char_star;
    arg9 : ARRAY [0 .. ORD(LAST(Tile)) + 1] OF CHAR;
    arg9i: CARDINAL                                 := 0;
    arg10: C.char_star;
  BEGIN
    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN xopt THEN arg1[arg1i] := tileToChar[t]; INC(arg1i); END;
    END;
    arg1[arg1i] := '\000';

    arg2 := M3toC.SharedTtoS(xlabel);
    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN yopt THEN arg5[arg5i] := tileToChar[t]; INC(arg5i); END;
    END;
    arg5[arg5i] := '\000';

    arg6 := M3toC.SharedTtoS(ylabel);
    FOR t := FIRST(DirTile) TO LAST(DirTile) DO
      IF t IN zopt THEN arg9[arg9i] := tileToChar[t]; INC(arg9i); END;
    END;
    arg9[arg9i] := '\000';

    arg10 := M3toC.SharedTtoS(zlabel);
    PLPlotRaw.DrawBox3D(arg1[0], arg2, xtick, nsubx, arg5[0], arg6, ytick,
                        nsuby, arg9[0], arg10, ztick, nsubz);

    M3toC.FreeSharedS(xlabel, arg2);

    M3toC.FreeSharedS(ylabel, arg6);

    M3toC.FreeSharedS(zlabel, arg10);
  END DrawBox3D;

PROCEDURE CalcWorld (rx, ry: Float; ): CalcWorldResult =
  VAR
    result: CalcWorldResult;
    arg5  : C.int;
  BEGIN
    PLPlotRaw.CalcWorld(rx, ry, result.wx, result.wy, arg5);
    result.window := arg5;
    RETURN result;
  END CalcWorld;

PROCEDURE Clear () =
  BEGIN
    PLPlotRaw.Clear();
  END Clear;

PROCEDURE SetFGColorDiscr (icol0: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetFGColorDiscr(icol0);
  END SetFGColorDiscr;

PROCEDURE SetFGColorCont (col1: Float; ) =
  BEGIN
    PLPlotRaw.SetFGColorCont(col1);
  END SetFGColorCont;

PROCEDURE PlotContour (READONLY z             : FloatMatrix;
                                kx, lx, ky, ly: INTEGER;
                       READONLY x             : FloatVector;
                                pltr          : CallbackM3Proc;
                                OBJECT_DATA   : REFANY;         ) =
  VAR
    arg1: REF ARRAY OF ADDRESS;
    nx                         := NUMBER(z);
    ny                         := NUMBER(z[0]);
    n                          := NUMBER(x);
  BEGIN
    arg1 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg1[i] := ADR(z[i, 0]) END;
    PLPlotRaw.PlotContour(
      arg1[0], nx, ny, kx, lx, ky, ly, x[0], n, CallbackM3,
      NEW(
        REF CallbackM3Data, callback := pltr, callbackData := OBJECT_DATA));
  END PlotContour;

PROCEDURE CopyStateFrom (iplsr, flags: INTEGER; ) =
  BEGIN
    PLPlotRaw.CopyStateFrom(iplsr, flags);
  END CopyStateFrom;

PROCEDURE ExitAll () =
  BEGIN
    PLPlotRaw.ExitAll();
  END ExitAll;

PROCEDURE Exit () =
  BEGIN
    PLPlotRaw.Exit();
  END Exit;

PROCEDURE SetEnvironment (xmin, xmax, ymin, ymax: Float;
                          just: AxesScaling := AxesScaling.independent;
                          axis: TileSet := TileSet{Tile.box, Tile.ticks}; ) =
  VAR arg6: C.int;
  BEGIN
    IF axis = TileSet{} THEN
      arg6 := -2;
    ELSIF axis = TileSet{Tile.box} THEN
      arg6 := -1;
    ELSE
      arg6 := 0;
      IF Tile.xTicksLog IN axis THEN INC(arg6, 10); END;
      IF Tile.yTicksLog IN axis THEN INC(arg6, 20); END;
      axis := axis - TileSet{Tile.xTicksLog, Tile.yTicksLog};
      IF axis = TileSet{Tile.box, Tile.ticks} THEN
        INC(arg6, 0);
      ELSIF axis = TileSet{Tile.box, Tile.ticks, Tile.axes} THEN
        INC(arg6, 1);
      ELSIF axis = TileSet{Tile.box, Tile.ticks, Tile.axes, Tile.gridMajor} THEN
        INC(arg6, 2);
      ELSIF axis = TileSet{Tile.box, Tile.ticks, Tile.axes, Tile.gridMajor,
                           Tile.gridMinor} THEN
        INC(arg6, 3);
      ELSE
        <* ASSERT FALSE *>       (*combination not supported by PLPlot
                                    :-( *)
      END;
    END;
    PLPlotRaw.SetEnvironment(xmin, xmax, ymin, ymax, ORD(just) - 1, arg6);
  END SetEnvironment;

PROCEDURE StopPage () =
  BEGIN
    PLPlotRaw.StopPage();
  END StopPage;

PROCEDURE PlotErrorX (READONLY xmin, xmax, y: FloatVector; ) =
  CONST nName = "xmin";
  VAR n := NUMBER(xmin);
  BEGIN
    <* ASSERT NUMBER(xmax) = n,
                "Array sizes of xmax (" & Fmt.Int(NUMBER(xmax)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotErrorX(n, xmin[0], xmax[0], y[0]);
  END PlotErrorX;

PROCEDURE PlotErrorY (READONLY x, ymin, ymax: FloatVector; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(ymin) = n,
                "Array sizes of ymin (" & Fmt.Int(NUMBER(ymin)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(ymax) = n,
                "Array sizes of ymax (" & Fmt.Int(NUMBER(ymax)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotErrorY(n, x[0], ymin[0], ymax[0]);
  END PlotErrorY;

PROCEDURE AdvanceFamily () =
  BEGIN
    PLPlotRaw.AdvanceFamily();
  END AdvanceFamily;

PROCEDURE FillPolygon (READONLY x, y: FloatVector; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.FillPolygon(n, x[0], y[0]);
  END FillPolygon;

PROCEDURE FillPolygon3D (READONLY x, y, z: FloatVector; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(z) = n,
                "Array sizes of z (" & Fmt.Int(NUMBER(z)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.FillPolygon3D(n, x[0], y[0], z[0]);
  END FillPolygon3D;

PROCEDURE Flush () =
  BEGIN
    PLPlotRaw.Flush();
  END Flush;

PROCEDURE SetFont (ifont: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetFont(ifont);
  END SetFont;

PROCEDURE LoadFont (fnt: INTEGER; ) =
  BEGIN
    PLPlotRaw.LoadFont(fnt);
  END LoadFont;

PROCEDURE GetCharacterHeight (): GetCharacterHeightResult =
  VAR result: GetCharacterHeightResult;
  BEGIN
    PLPlotRaw.GetCharacterHeight(result.def, result.ht);
    RETURN result;
  END GetCharacterHeight;

PROCEDURE GetFGColorDiscrRGB (icol0: INTEGER; ): GetFGColorDiscrRGBResult =
  VAR
    result: GetFGColorDiscrRGBResult;
    arg2  : C.int;
    arg3  : C.int;
    arg4  : C.int;
  BEGIN
    PLPlotRaw.GetFGColorDiscrRGB(icol0, arg2, arg3, arg4);
    result.r := arg2;
    result.g := arg3;
    result.b := arg4;
    RETURN result;
  END GetFGColorDiscrRGB;

PROCEDURE GetBGColorDiscrRGB (): GetBGColorDiscrRGBResult =
  VAR
    result: GetBGColorDiscrRGBResult;
    arg1  : C.int;
    arg2  : C.int;
    arg3  : C.int;
  BEGIN
    PLPlotRaw.GetBGColorDiscrRGB(arg1, arg2, arg3);
    result.r := arg1;
    result.g := arg2;
    result.b := arg3;
    RETURN result;
  END GetBGColorDiscrRGB;

PROCEDURE GetCompression (): INTEGER =
  VAR
    compression: INTEGER;
    arg1       : C.int;
  BEGIN
    PLPlotRaw.GetCompression(arg1);
    compression := arg1;
    RETURN compression;
  END GetCompression;

PROCEDURE GetWindowDevice (): GetWindowDeviceResult =
  VAR result: GetWindowDeviceResult;
  BEGIN
    PLPlotRaw.GetWindowDevice(
      result.mar, result.aspect, result.jx, result.jy);
    RETURN result;
  END GetWindowDevice;

PROCEDURE GetOrientation (): Float =
  VAR rot: Float;
  BEGIN
    PLPlotRaw.GetOrientation(rot);
    RETURN rot;
  END GetOrientation;

PROCEDURE GetWindowPlot (): GetWindowPlotResult =
  VAR result: GetWindowPlotResult;
  BEGIN
    PLPlotRaw.GetWindowPlot(
      result.xmin, result.ymin, result.xmax, result.ymax);
    RETURN result;
  END GetWindowPlot;

PROCEDURE GetFamilyFile (): GetFamilyFileResult =
  VAR
    result: GetFamilyFileResult;
    arg1  : C.int;
    arg2  : C.int;
    arg3  : C.int;
  BEGIN
    PLPlotRaw.GetFamilyFile(arg1, arg2, arg3);
    result.fam := arg1;
    result.num := arg2;
    result.bmax := arg3;
    RETURN result;
  END GetFamilyFile;

PROCEDURE GetRunLevel (): INTEGER =
  VAR
    level: INTEGER;
    arg1 : C.int;
  BEGIN
    PLPlotRaw.GetRunLevel(arg1);
    level := arg1;
    RETURN level;
  END GetRunLevel;

PROCEDURE GetOutputDeviceParam (): GetOutputDeviceParamResult =
  VAR
    result: GetOutputDeviceParamResult;
    arg3  : C.int;
    arg4  : C.int;
    arg5  : C.int;
    arg6  : C.int;
  BEGIN
    PLPlotRaw.GetOutputDeviceParam(
      result.xp, result.yp, arg3, arg4, arg5, arg6);
    result.xleng := arg3;
    result.yleng := arg4;
    result.xoff := arg5;
    result.yoff := arg6;
    RETURN result;
  END GetOutputDeviceParam;

PROCEDURE ShowGraphicScreen () =
  BEGIN
    PLPlotRaw.ShowGraphicScreen();
  END ShowGraphicScreen;

PROCEDURE GetBoundaries (): GetBoundariesResult =
  VAR result: GetBoundariesResult;
  BEGIN
    PLPlotRaw.GetBoundaries(
      result.xmin, result.xmax, result.ymin, result.ymax);
    RETURN result;
  END GetBoundaries;

PROCEDURE GetStream (): INTEGER =
  VAR
    strm: INTEGER;
    arg1: C.int;
  BEGIN
    PLPlotRaw.GetStream(arg1);
    strm := arg1;
    RETURN strm;
  END GetStream;

PROCEDURE GetVPBoundDev (): GetVPBoundDevResult =
  VAR result: GetVPBoundDevResult;
  BEGIN
    PLPlotRaw.GetVPBoundDev(
      result.xmin, result.xmax, result.ymin, result.ymax);
    RETURN result;
  END GetVPBoundDev;

PROCEDURE GetVPBoundWorld (): GetVPBoundWorldResult =
  VAR result: GetVPBoundWorldResult;
  BEGIN
    PLPlotRaw.GetVPBoundWorld(
      result.xmin, result.xmax, result.ymin, result.ymax);
    RETURN result;
  END GetVPBoundWorld;

PROCEDURE GetXLabelParam (): GetXLabelParamResult =
  VAR
    result: GetXLabelParamResult;
    arg1  : C.int;
    arg2  : C.int;
  BEGIN
    PLPlotRaw.GetXLabelParam(arg1, arg2);
    result.digmax := arg1;
    result.digits := arg2;
    RETURN result;
  END GetXLabelParam;

PROCEDURE GetYLabelParam (): GetYLabelParamResult =
  VAR
    result: GetYLabelParamResult;
    arg1  : C.int;
    arg2  : C.int;
  BEGIN
    PLPlotRaw.GetYLabelParam(arg1, arg2);
    result.digmax := arg1;
    result.digits := arg2;
    RETURN result;
  END GetYLabelParam;

PROCEDURE GetZLabelParam (): GetZLabelParamResult =
  VAR
    result: GetZLabelParamResult;
    arg1  : C.int;
    arg2  : C.int;
  BEGIN
    PLPlotRaw.GetZLabelParam(arg1, arg2);
    result.digmax := arg1;
    result.digits := arg2;
    RETURN result;
  END GetZLabelParam;

PROCEDURE PlotHistogram (READONLY x             : FloatVector;
                                  datmin, datmax: Float;
                                  nbin          : INTEGER;
                                  oldwin        : INTEGER       := 0; ) =
  VAR n := NUMBER(x);
  BEGIN
    PLPlotRaw.PlotHistogram(n, x[0], datmin, datmax, nbin, oldwin);
  END PlotHistogram;

PROCEDURE SetColorHLS (h, l, s: Float; ) =
  BEGIN
    PLPlotRaw.SetColorHLS(h, l, s);
  END SetColorHLS;

PROCEDURE Init () =
  BEGIN
    PLPlotRaw.Init();
  END Init;

PROCEDURE PlotLineSegment (x1, y1, x2, y2: Float; ) =
  BEGIN
    PLPlotRaw.PlotLineSegment(x1, y1, x2, y2);
  END PlotLineSegment;

PROCEDURE SetLabels (xlabel, ylabel, tlabel: TEXT; ) =
  VAR
    arg1: C.char_star;
    arg2: C.char_star;
    arg3: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(xlabel);
    arg2 := M3toC.SharedTtoS(ylabel);
    arg3 := M3toC.SharedTtoS(tlabel);
    PLPlotRaw.SetLabels(arg1, arg2, arg3);
    M3toC.FreeSharedS(xlabel, arg1);
    M3toC.FreeSharedS(ylabel, arg2);
    M3toC.FreeSharedS(tlabel, arg3);
  END SetLabels;

PROCEDURE SetLightPos (x, y, z: Float; ) =
  BEGIN
    PLPlotRaw.SetLightPos(x, y, z);
  END SetLightPos;

PROCEDURE PlotLines (READONLY x, y: FloatVector; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotLines(n, x[0], y[0]);
  END PlotLines;

PROCEDURE PlotLines3D (READONLY x, y, z: FloatVector; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(z) = n,
                "Array sizes of z (" & Fmt.Int(NUMBER(z)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotLines3D(n, x[0], y[0], z[0]);
  END PlotLines3D;

PROCEDURE SetLineStyle (lin: [LineStyle.continuous .. LAST(LineStyle)]; ) =
  BEGIN
    PLPlotRaw.SetLineStyle(ORD(lin));
  END SetLineStyle;

PROCEDURE PlotMesh (READONLY x, y: FloatVector;
                    READONLY z   : FloatMatrix;
                             opt : INTEGER;     ) =
  CONST
    nxName = "x";
    nyName = "y";
  VAR
    nx                         := NUMBER(x);
    ny                         := NUMBER(y);
    arg3: REF ARRAY OF ADDRESS;
  BEGIN
    <* ASSERT NUMBER(z) = nx, "The x size of z (" & Fmt.Int(NUMBER(z))
                                & ") doesn't match the size of " & nxName
                                & " (" & Fmt.Int(nx) & ")." *>
    <* ASSERT NUMBER(z[0]) = ny, "The y size of z (" & Fmt.Int(NUMBER(z))
                                   & ") doesn't match the size of "
                                   & nyName & " (" & Fmt.Int(ny) & ")." *>
    arg3 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg3[i] := ADR(z[i, 0]) END;
    PLPlotRaw.PlotMesh(x[0], y[0], arg3[0], nx, ny, opt);
  END PlotMesh;

PROCEDURE PlotMeshColored (READONLY x, y  : FloatVector;
                           READONLY z     : FloatMatrix;
                                    opt   : INTEGER;
                           READONLY clevel: FloatVector; ) =
  CONST
    nxName = "x";
    nyName = "y";
  VAR
    nx                         := NUMBER(x);
    ny                         := NUMBER(y);
    arg3: REF ARRAY OF ADDRESS;
    n                          := NUMBER(clevel);
  BEGIN
    <* ASSERT NUMBER(z) = nx, "The x size of z (" & Fmt.Int(NUMBER(z))
                                & ") doesn't match the size of " & nxName
                                & " (" & Fmt.Int(nx) & ")." *>
    <* ASSERT NUMBER(z[0]) = ny, "The y size of z (" & Fmt.Int(NUMBER(z))
                                   & ") doesn't match the size of "
                                   & nyName & " (" & Fmt.Int(ny) & ")." *>
    arg3 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg3[i] := ADR(z[i, 0]) END;
    PLPlotRaw.PlotMeshColored(
      x[0], y[0], arg3[0], nx, ny, opt, clevel[0], n);
  END PlotMeshColored;

PROCEDURE CreateStream (): INTEGER =
  VAR
    strm: INTEGER;
    arg1: C.int;
  BEGIN
    PLPlotRaw.CreateStream(arg1);
    strm := arg1;
    RETURN strm;
  END CreateStream;

PROCEDURE PrintTextVP (side: TEXT; disp, pos, just: Float; text: TEXT; ) =
  VAR
    arg1: C.char_star;
    arg5: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(side);
    arg5 := M3toC.SharedTtoS(text);
    PLPlotRaw.PrintTextVP(arg1, disp, pos, just, arg5);
    M3toC.FreeSharedS(side, arg1);
    M3toC.FreeSharedS(text, arg5);
  END PrintTextVP;

PROCEDURE Plot3D (READONLY x, y     : FloatVector;
                  READONLY z        : FloatMatrix;
                           opt, side: INTEGER;     ) =
  CONST
    nxName = "x";
    nyName = "y";
  VAR
    nx                         := NUMBER(x);
    ny                         := NUMBER(y);
    arg3: REF ARRAY OF ADDRESS;
  BEGIN
    <* ASSERT NUMBER(z) = nx, "The x size of z (" & Fmt.Int(NUMBER(z))
                                & ") doesn't match the size of " & nxName
                                & " (" & Fmt.Int(nx) & ")." *>
    <* ASSERT NUMBER(z[0]) = ny, "The y size of z (" & Fmt.Int(NUMBER(z))
                                   & ") doesn't match the size of "
                                   & nyName & " (" & Fmt.Int(ny) & ")." *>
    arg3 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg3[i] := ADR(z[i, 0]) END;
    PLPlotRaw.Plot3D(x[0], y[0], arg3[0], nx, ny, opt, side);
  END Plot3D;

PROCEDURE Plot3DC (READONLY x, y  : FloatVector;
                   READONLY z     : FloatMatrix;
                            opt   : INTEGER;
                   READONLY clevel: FloatVector; ) =
  CONST
    nxName = "x";
    nyName = "y";
  VAR
    nx                         := NUMBER(x);
    ny                         := NUMBER(y);
    arg3: REF ARRAY OF ADDRESS;
    n                          := NUMBER(clevel);
  BEGIN
    <* ASSERT NUMBER(z) = nx, "The x size of z (" & Fmt.Int(NUMBER(z))
                                & ") doesn't match the size of " & nxName
                                & " (" & Fmt.Int(nx) & ")." *>
    <* ASSERT NUMBER(z[0]) = ny, "The y size of z (" & Fmt.Int(NUMBER(z))
                                   & ") doesn't match the size of "
                                   & nyName & " (" & Fmt.Int(ny) & ")." *>
    arg3 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg3[i] := ADR(z[i, 0]) END;
    PLPlotRaw.Plot3DC(x[0], y[0], arg3[0], nx, ny, opt, clevel[0], n);
  END Plot3DC;

PROCEDURE Surface3D (READONLY x, y  : FloatVector;
                     READONLY z     : FloatMatrix;
                              opt   : INTEGER;
                     READONLY clevel: FloatVector; ) =
  CONST
    nxName = "x";
    nyName = "y";
  VAR
    nx                         := NUMBER(x);
    ny                         := NUMBER(y);
    arg3: REF ARRAY OF ADDRESS;
    n                          := NUMBER(clevel);
  BEGIN
    <* ASSERT NUMBER(z) = nx, "The x size of z (" & Fmt.Int(NUMBER(z))
                                & ") doesn't match the size of " & nxName
                                & " (" & Fmt.Int(nx) & ")." *>
    <* ASSERT NUMBER(z[0]) = ny, "The y size of z (" & Fmt.Int(NUMBER(z))
                                   & ") doesn't match the size of "
                                   & nyName & " (" & Fmt.Int(ny) & ")." *>
    arg3 := NEW(REF ARRAY OF ADDRESS, NUMBER(z));
    FOR i := 0 TO LAST(z) DO arg3[i] := ADR(z[i, 0]) END;
    PLPlotRaw.Surface3D(x[0], y[0], arg3[0], nx, ny, opt, clevel[0], n);
  END Surface3D;

PROCEDURE SetFillPattern (READONLY inc, del: ARRAY OF INTEGER; ) =
  CONST nName = "inc";
  VAR n := NUMBER(inc);
  BEGIN
    <* ASSERT NUMBER(del) = n,
                "Array sizes of del (" & Fmt.Int(NUMBER(del)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.SetFillPattern(n, inc[0], del[0]);
  END SetFillPattern;

PROCEDURE PlotPoints (READONLY x, y: FloatVector; code: INTEGER; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotPoints(n, x[0], y[0], code);
  END PlotPoints;

PROCEDURE PlotPoints3D (READONLY x, y, z: FloatVector; code: INTEGER; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(z) = n,
                "Array sizes of z (" & Fmt.Int(NUMBER(z)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotPoints3D(n, x[0], y[0], z[0], code);
  END PlotPoints3D;

PROCEDURE PlotPolygon3D (READONLY x, y, z: FloatVector;
                         READONLY draw   : ARRAY OF INTEGER;
                                  flag   : INTEGER;          ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(z) = n,
                "Array sizes of z (" & Fmt.Int(NUMBER(z)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(draw) = n - 1,
                "Array size of draw (" & Fmt.Int(NUMBER(draw))
                  & " must be one more than that of " & nName & " ("
                  & Fmt.Int(n) & ")." *>
    PLPlotRaw.PlotPolygon3D(n, x[0], y[0], z[0], draw[0], flag);
  END PlotPolygon3D;

PROCEDURE SetLabelPrecision (setp, prec: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetLabelPrecision(setp, prec);
  END SetLabelPrecision;

PROCEDURE SetFillStyle (patt: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetFillStyle(patt);
  END SetFillStyle;

PROCEDURE PrintTextWorld (x, y, dx, dy, just: Float; text: TEXT; ) =
  VAR arg6: C.char_star;
  BEGIN
    arg6 := M3toC.SharedTtoS(text);
    PLPlotRaw.PrintTextWorld(x, y, dx, dy, just, arg6);
    M3toC.FreeSharedS(text, arg6);
  END PrintTextWorld;

PROCEDURE Replot () =
  BEGIN
    PLPlotRaw.Replot();
  END Replot;

PROCEDURE SetCharacterHeight (def, scale: Float; ) =
  BEGIN
    PLPlotRaw.SetCharacterHeight(def, scale);
  END SetCharacterHeight;

PROCEDURE SetColorMapDiscr (READONLY r, g, b: ARRAY OF INTEGER; ) =
  CONST nName = "r";
  VAR n := NUMBER(r);
  BEGIN
    <* ASSERT NUMBER(g) = n,
                "Array sizes of g (" & Fmt.Int(NUMBER(g)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(b) = n,
                "Array sizes of b (" & Fmt.Int(NUMBER(b)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.SetColorMapDiscr(r[0], g[0], b[0], n);
  END SetColorMapDiscr;

PROCEDURE SetColorMapDiscrSize (ncol0: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetColorMapDiscrSize(ncol0);
  END SetColorMapDiscrSize;

PROCEDURE SetColorMapCont (READONLY r, g, b: ARRAY OF INTEGER; ) =
  CONST nName = "r";
  VAR n := NUMBER(r);
  BEGIN
    <* ASSERT NUMBER(g) = n,
                "Array sizes of g (" & Fmt.Int(NUMBER(g)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(b) = n,
                "Array sizes of b (" & Fmt.Int(NUMBER(b)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.SetColorMapCont(r[0], g[0], b[0], n);
  END SetColorMapCont;

PROCEDURE SetColorCont (         itype                      : INTEGER;
                        READONLY pos, coord1, coord2, coord3: FloatVector;
                        READONLY rev: ARRAY OF INTEGER; ) =
  CONST nName = "pos";
  VAR n := NUMBER(pos);
  BEGIN
    <* ASSERT NUMBER(coord1) = n,
                "Array sizes of coord1 (" & Fmt.Int(NUMBER(coord1))
                  & ") and " & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(coord2) = n,
                "Array sizes of coord2 (" & Fmt.Int(NUMBER(coord2))
                  & ") and " & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(coord3) = n,
                "Array sizes of coord3 (" & Fmt.Int(NUMBER(coord3))
                  & ") and " & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    <* ASSERT NUMBER(rev) = n - 1,
                "Array size of rev (" & Fmt.Int(NUMBER(rev))
                  & " must be one more than that of " & nName & " ("
                  & Fmt.Int(n) & ")." *>
    PLPlotRaw.SetColorCont(
      itype, n, pos[0], coord1[0], coord2[0], coord3[0], rev[0]);
  END SetColorCont;

PROCEDURE SetColorMapContSize (ncol1: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetColorMapContSize(ncol1);
  END SetColorMapContSize;

PROCEDURE SetColorRGB (icol0, r, g, b: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetColorRGB(icol0, r, g, b);
  END SetColorRGB;

PROCEDURE SetBGColor (r, g, b: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetBGColor(r, g, b);
  END SetBGColor;

PROCEDURE ToggleColor (color: INTEGER; ) =
  BEGIN
    PLPlotRaw.ToggleColor(color);
  END ToggleColor;

PROCEDURE SetCompression (compression: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetCompression(compression);
  END SetCompression;

PROCEDURE SetDevice (devname: TEXT; ) =
  VAR arg1: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(devname);
    PLPlotRaw.SetDevice(arg1);
    M3toC.FreeSharedS(devname, arg1);
  END SetDevice;

PROCEDURE SetWindowDevice (mar, aspect, jx, jy: Float; ) =
  BEGIN
    PLPlotRaw.SetWindowDevice(mar, aspect, jx, jy);
  END SetWindowDevice;

PROCEDURE LoadTransformation (dimxmin, dimxmax, dimymin, dimymax: INTEGER;
                              dimxpmm, dimypmm                  : Float;   ) =
  BEGIN
    PLPlotRaw.LoadTransformation(
      dimxmin, dimxmax, dimymin, dimymax, dimxpmm, dimypmm);
  END LoadTransformation;

PROCEDURE SetOrientation (rot: Float; ) =
  BEGIN
    PLPlotRaw.SetOrientation(rot);
  END SetOrientation;

PROCEDURE SetWindowPlot (xmin, ymin, xmax, ymax: Float; ) =
  BEGIN
    PLPlotRaw.SetWindowPlot(xmin, ymin, xmax, ymax);
  END SetWindowPlot;

PROCEDURE ZoomWindow (xmin, ymin, xmax, ymax: Float; ) =
  BEGIN
    PLPlotRaw.ZoomWindow(xmin, ymin, xmax, ymax);
  END ZoomWindow;

PROCEDURE SetEscapeChar (esc: CHAR; ) =
  BEGIN
    PLPlotRaw.SetEscapeChar(ORD(esc));
  END SetEscapeChar;

PROCEDURE SetOption (opt, optarg: TEXT; ): INTEGER =
  VAR
    arg1  : C.char_star;
    arg2  : C.char_star;
    result: INTEGER;
  BEGIN
    arg1 := M3toC.SharedTtoS(opt);
    arg2 := M3toC.SharedTtoS(optarg);
    result := PLPlotRaw.SetOption(arg1, arg2);
    M3toC.FreeSharedS(opt, arg1);
    M3toC.FreeSharedS(optarg, arg2);
    RETURN result;
  END SetOption;

PROCEDURE SetFamilyFile (fam, num, bmax: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetFamilyFile(fam, num, bmax);
  END SetFamilyFile;

PROCEDURE SetFileName (fnam: TEXT; ) =
  VAR arg1: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(fnam);
    PLPlotRaw.SetFileName(arg1);
    M3toC.FreeSharedS(fnam, arg1);
  END SetFileName;

PROCEDURE ShadeRegions (READONLY a                     : FloatMatrix;
                                 xmin, xmax, ymin, ymax: Float;
                        READONLY x                     : FloatVector;
                        fill_width, cont_color, cont_width: INTEGER;
                        rectangular                       : BOOLEAN;
                        pltr       : CallbackM3Proc;
                        OBJECT_DATA: REFANY;         ) =
  VAR
    arg1: REF ARRAY OF ADDRESS;
    nx                         := NUMBER(a);
    ny                         := NUMBER(a[0]);
    n                          := NUMBER(x);
  BEGIN
    arg1 := NEW(REF ARRAY OF ADDRESS, NUMBER(a));
    FOR i := 0 TO LAST(a) DO arg1[i] := ADR(a[i, 0]) END;
    PLPlotRaw.ShadeRegions(
      arg1[0], nx, ny, NIL (*not yet supported*), xmin, xmax, ymin, ymax,
      x[0], n, fill_width, cont_color, cont_width,
      NIL (*not yet supported*), ORD(rectangular), CallbackM3,
      NEW(
        REF CallbackM3Data, callback := pltr, callbackData := OBJECT_DATA));
  END ShadeRegions;

PROCEDURE ShadeRegion (READONLY a: FloatMatrix;
                       left, right, bottom, top, shade_min, shade_max: Float;
                       sh_cmap : INTEGER;
                       sh_color: Float;
                       sh_width, min_color, min_width, max_color, max_width: INTEGER;
                       rectangular: BOOLEAN;
                       pltr       : CallbackM3Proc;
                       OBJECT_DATA: REFANY;         ) =
  VAR
    arg1: REF ARRAY OF ADDRESS;
    nx                         := NUMBER(a);
    ny                         := NUMBER(a[0]);
  BEGIN
    arg1 := NEW(REF ARRAY OF ADDRESS, NUMBER(a));
    FOR i := 0 TO LAST(a) DO arg1[i] := ADR(a[i, 0]) END;
    PLPlotRaw.ShadeRegion(
      arg1[0], nx, ny, NIL (*not yet supported*), left, right, bottom, top,
      shade_min, shade_max, sh_cmap, sh_color, sh_width, min_color,
      min_width, max_color, max_width, NIL (*not yet supported*),
      ORD(rectangular), CallbackM3,
      NEW(
        REF CallbackM3Data, callback := pltr, callbackData := OBJECT_DATA));
  END ShadeRegion;

PROCEDURE SetMajorTickSize (def, scale: Float; ) =
  BEGIN
    PLPlotRaw.SetMajorTickSize(def, scale);
  END SetMajorTickSize;

PROCEDURE SetMinorTickSize (def, scale: Float; ) =
  BEGIN
    PLPlotRaw.SetMinorTickSize(def, scale);
  END SetMinorTickSize;

PROCEDURE SetGlobalOrientation (ori: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetGlobalOrientation(ori);
  END SetGlobalOrientation;

PROCEDURE SetOutputDeviceParam (xp, yp                  : Float;
                                xleng, yleng, xoff, yoff: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetOutputDeviceParam(xp, yp, xleng, yleng, xoff, yoff);
  END SetOutputDeviceParam;

PROCEDURE SetPause (pause: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetPause(pause);
  END SetPause;

PROCEDURE SetStream (strm: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetStream(strm);
  END SetStream;

PROCEDURE SetSubWindows (nx, ny: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetSubWindows(nx, ny);
  END SetSubWindows;

PROCEDURE SetSymbolHeight (def, scale: Float; ) =
  BEGIN
    PLPlotRaw.SetSymbolHeight(def, scale);
  END SetSymbolHeight;

PROCEDURE Start (nx, ny: INTEGER; ) =
  BEGIN
    PLPlotRaw.Start(nx, ny);
  END Start;

PROCEDURE StartDev (devname: TEXT; nx, ny: INTEGER; ) =
  VAR arg1: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(devname);
    PLPlotRaw.StartDev(arg1, nx, ny);
    M3toC.FreeSharedS(devname, arg1);
  END StartDev;

PROCEDURE AddStripchartPoint (id, pen: INTEGER; x, y: Float; ) =
  BEGIN
    PLPlotRaw.AddStripchartPoint(id, pen, x, y);
  END AddStripchartPoint;

PROCEDURE CreateStripchart (xspec, yspec: TEXT;
                            xmin, xmax, xjump, ymin, ymax, xlpos, ylpos: Float;
                            y_ascl, acc, colbox, collab: INTEGER;
                            READONLY colline, styline: ARRAY OF INTEGER;
                            VAR legline: ARRAY [0 .. 3] OF TEXT;
                            labx, laby, labtop: TEXT; ): INTEGER =
  CONST nName = "colline";
  VAR
    id   : INTEGER;
    arg1 : C.int;
    arg2 : C.char_star;
    arg3 : C.char_star;
    n                                    := NUMBER(colline);
    arg17: ARRAY [0 .. 3] OF C.char_star;
    arg18: C.char_star;
    arg19: C.char_star;
    arg20: C.char_star;
  BEGIN
    <* ASSERT NUMBER(styline) = n,
                "Array sizes of styline (" & Fmt.Int(NUMBER(styline))
                  & ") and " & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    arg2 := M3toC.SharedTtoS(xspec);
    arg3 := M3toC.SharedTtoS(yspec);
    FOR i := FIRST(legline) TO LAST(legline) DO
      arg17[i] := M3toC.SharedTtoS(legline[i]);
    END;
    arg18 := M3toC.SharedTtoS(labx);
    arg19 := M3toC.SharedTtoS(laby);
    arg20 := M3toC.SharedTtoS(labtop);
    PLPlotRaw.CreateStripchart(
      arg1, arg2, arg3, xmin, xmax, xjump, ymin, ymax, xlpos, ylpos,
      y_ascl, acc, colbox, collab, colline[0], styline[0], arg17, arg18,
      arg19, arg20);
    id := arg1;
    M3toC.FreeSharedS(xspec, arg2);
    M3toC.FreeSharedS(yspec, arg3);
    FOR i := FIRST(legline) TO LAST(legline) DO
      M3toC.FreeSharedS(legline[i], arg17[i]);
    END;
    M3toC.FreeSharedS(labx, arg18);
    M3toC.FreeSharedS(laby, arg19);
    M3toC.FreeSharedS(labtop, arg20);
    RETURN id;
  END CreateStripchart;

PROCEDURE DeleteStripchart (id: INTEGER; ) =
  BEGIN
    PLPlotRaw.DeleteStripchart(id);
  END DeleteStripchart;

PROCEDURE SetNewLineStyle (READONLY mark, space: ARRAY OF INTEGER; ) =
  CONST nName = "mark";
  VAR n := NUMBER(mark);
  BEGIN
    <* ASSERT NUMBER(space) = n,
                "Array sizes of space (" & Fmt.Int(NUMBER(space))
                  & ") and " & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.SetNewLineStyle(n, mark[0], space[0]);
  END SetNewLineStyle;

PROCEDURE SetVPAbsolute (xmin, xmax, ymin, ymax: Float; ) =
  BEGIN
    PLPlotRaw.SetVPAbsolute(xmin, xmax, ymin, ymax);
  END SetVPAbsolute;

PROCEDURE SetXLabelParam (digmax, digits: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetXLabelParam(digmax, digits);
  END SetXLabelParam;

PROCEDURE SetYLabelParam (digmax, digits: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetYLabelParam(digmax, digits);
  END SetYLabelParam;

PROCEDURE PlotSymbols (READONLY x, y: FloatVector; code: INTEGER; ) =
  CONST nName = "x";
  VAR n := NUMBER(x);
  BEGIN
    <* ASSERT NUMBER(y) = n,
                "Array sizes of y (" & Fmt.Int(NUMBER(y)) & ") and "
                  & nName & " (" & Fmt.Int(n) & ") mismatch." *>
    PLPlotRaw.PlotSymbols(n, x[0], y[0], code);
  END PlotSymbols;

PROCEDURE SetZLabelParam (digmax, digits: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetZLabelParam(digmax, digits);
  END SetZLabelParam;

PROCEDURE ShowTextScreen () =
  BEGIN
    PLPlotRaw.ShowTextScreen();
  END ShowTextScreen;

PROCEDURE SetVPAspect (aspect: Float; ) =
  BEGIN
    PLPlotRaw.SetVPAspect(aspect);
  END SetVPAspect;

PROCEDURE CreateVPAspect (xmin, xmax, ymin, ymax, aspect: Float; ) =
  BEGIN
    PLPlotRaw.CreateVPAspect(xmin, xmax, ymin, ymax, aspect);
  END CreateVPAspect;

PROCEDURE CreateVP (xmin, xmax, ymin, ymax: Float; ) =
  BEGIN
    PLPlotRaw.CreateVP(xmin, xmax, ymin, ymax);
  END CreateVP;

PROCEDURE SetStandardVP () =
  BEGIN
    PLPlotRaw.SetStandardVP();
  END SetStandardVP;

PROCEDURE Init3DWindow (basex, basey, height, xmin0, xmax0, ymin0, ymax0,
                          zmin0, zmax0, alt, az: Float; ) =
  BEGIN
    PLPlotRaw.Init3DWindow(basex, basey, height, xmin0, xmax0, ymin0,
                           ymax0, zmin0, zmax0, alt, az);
  END Init3DWindow;

PROCEDURE SetPenWidth (width: INTEGER; ) =
  BEGIN
    PLPlotRaw.SetPenWidth(width);
  END SetPenWidth;

PROCEDURE SetWindow (xmin, xmax, ymin, ymax: Float; ) =
  BEGIN
    PLPlotRaw.SetWindow(xmin, xmax, ymin, ymax);
  END SetWindow;

PROCEDURE SetXORMode (mode: BOOLEAN; ): BOOLEAN =
  VAR
    status: BOOLEAN;
    arg2  : C.int;
  BEGIN
    PLPlotRaw.SetXORMode(ORD(mode), arg2);
    status := arg2 # 0;
    RETURN status;
  END SetXORMode;

PROCEDURE ClearOpts () =
  BEGIN
    PLPlotRaw.ClearOpts();
  END ClearOpts;

PROCEDURE ResetOpts () =
  BEGIN
    PLPlotRaw.ResetOpts();
  END ResetOpts;

PROCEDURE SetUsage (program_string, usage_string: TEXT; ) =
  VAR
    arg1: C.char_star;
    arg2: C.char_star;
  BEGIN
    arg1 := M3toC.SharedTtoS(program_string);
    arg2 := M3toC.SharedTtoS(usage_string);
    PLPlotRaw.SetUsage(arg1, arg2);
    M3toC.FreeSharedS(program_string, arg1);
    M3toC.FreeSharedS(usage_string, arg2);
  END SetUsage;

PROCEDURE OptUsage () =
  BEGIN
    PLPlotRaw.OptUsage();
  END OptUsage;


BEGIN
END PLPlot.
