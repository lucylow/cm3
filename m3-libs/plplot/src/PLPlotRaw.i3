(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org/).
 * Version: 1.3.20
 *
 * Do not make changes to this file unless you know what you are doing --
 * modify the SWIG interface file instead.
 *******************************************************************************)

INTERFACE PLPlotRaw;

IMPORT Ctypes AS C;


TYPE
  PlotterFunc = PROCEDURE ();
  PLINT = C.int;
  PLFLT = C.double;



<* EXTERNAL c_pl_setcontlabelformat *>
PROCEDURE pl_setcontlabelformat (lexp, sigdig: C.int; );

<* EXTERNAL c_pl_setcontlabelparam *>
PROCEDURE pl_setcontlabelparam (offset, size, spacing: C.double;
                                active               : C.int;    );

<* EXTERNAL c_pladv *>
PROCEDURE pladv (page: C.int; );

<* EXTERNAL c_plaxes *>
PROCEDURE plaxes (         x0, y0: C.double;
                  READONLY xopt  : (*ARRAY OF*) CHAR;
                           xtick : C.double;
                           nxsub : C.int;
                  READONLY yopt  : (*ARRAY OF*) CHAR;
                           ytick : C.double;
                           nysub : C.int;             );

<* EXTERNAL c_plbin *>
PROCEDURE plbin (         n     : C.int;
                 READONLY x, y  : (*ARRAY OF*) C.double;
                          center: C.int;                 );

<* EXTERNAL c_plbop *>
PROCEDURE plbop ();

<* EXTERNAL c_plbox *>
PROCEDURE plbox (READONLY xopt : (*ARRAY OF*) CHAR;
                          xtick: C.double;
                          nxsub: C.int;
                 READONLY yopt : (*ARRAY OF*) CHAR;
                          ytick: C.double;
                          nysub: C.int;             );

<* EXTERNAL c_plbox3 *>
PROCEDURE plbox3 (READONLY xopt  : (*ARRAY OF*) CHAR;
                           xlabel: C.char_star;
                           xtick : C.double;
                           nsubx : C.int;
                  READONLY yopt  : (*ARRAY OF*) CHAR;
                           ylabel: C.char_star;
                           ytick : C.double;
                           nsuby : C.int;
                  READONLY zopt  : (*ARRAY OF*) CHAR;
                           zlabel: C.char_star;
                           ztick : C.double;
                           nsubz : C.int;             );

<* EXTERNAL c_plcalc_world *>
PROCEDURE plcalc_world (    rx, ry: C.double;
                        VAR wx, wy: C.double;
                        VAR window: C.int;    );

<* EXTERNAL c_plclear *>
PROCEDURE plclear ();

<* EXTERNAL c_plcol0 *>
PROCEDURE plcol0 (icol0: C.int; );

<* EXTERNAL c_plcol1 *>
PROCEDURE plcol1 (col1: C.double; );

<* EXTERNAL c_plcont *>
PROCEDURE plcont (READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                           nx, ny, kx, lx, ky, ly: C.int;
                  READONLY x                     : (*ARRAY OF*) C.double;
                           n                     : C.int;
                           pltr                  : PlotterFunc;
                           OBJECT_DATA           : REFANY;                );

<* EXTERNAL c_plcpstrm *>
PROCEDURE plcpstrm (iplsr, flags: C.int; );

<* EXTERNAL c_plend *>
PROCEDURE plend ();

<* EXTERNAL c_plend1 *>
PROCEDURE plend1 ();

<* EXTERNAL c_plenv *>
PROCEDURE plenv (xmin, xmax, ymin, ymax: C.double; just, axis: C.int; );

<* EXTERNAL c_pleop *>
PROCEDURE pleop ();

<* EXTERNAL c_plerrx *>
PROCEDURE plerrx (n: C.int; READONLY xmin, xmax, y: (*ARRAY OF*) C.double; );

<* EXTERNAL c_plerry *>
PROCEDURE plerry (n: C.int; READONLY x, ymin, ymax: (*ARRAY OF*) C.double; );

<* EXTERNAL c_plfamadv *>
PROCEDURE plfamadv ();

<* EXTERNAL c_plfill *>
PROCEDURE plfill (n: C.int; READONLY x, y: (*ARRAY OF*) C.double; );

<* EXTERNAL c_plfill3 *>
PROCEDURE plfill3 (n: C.int; READONLY x, y, z: (*ARRAY OF*) C.double; );

<* EXTERNAL c_plflush *>
PROCEDURE plflush ();

<* EXTERNAL c_plfont *>
PROCEDURE plfont (ifont: C.int; );

<* EXTERNAL c_plfontld *>
PROCEDURE plfontld (fnt: C.int; );

<* EXTERNAL c_plgchr *>
PROCEDURE plgchr (VAR def, ht: C.double; );

<* EXTERNAL c_plgcol0 *>
PROCEDURE plgcol0 (icol0: C.int; VAR r, g, b: C.int; );

<* EXTERNAL c_plgcolbg *>
PROCEDURE plgcolbg (VAR r, g, b: C.int; );

<* EXTERNAL c_plgcompression *>
PROCEDURE plgcompression (VAR compression: C.int; );

<* EXTERNAL c_plgdidev *>
PROCEDURE plgdidev (VAR mar, aspect, jx, jy: C.double; );

<* EXTERNAL c_plgdiori *>
PROCEDURE plgdiori (VAR rot: C.double; );

<* EXTERNAL c_plgdiplt *>
PROCEDURE plgdiplt (VAR xmin, ymin, xmax, ymax: C.double; );

<* EXTERNAL c_plgfam *>
PROCEDURE plgfam (VAR fam, num, bmax: C.int; );

<* EXTERNAL c_plglevel *>
PROCEDURE plglevel (VAR level: C.int; );

<* EXTERNAL c_plgpage *>
PROCEDURE plgpage (VAR xp, yp                  : C.double;
                   VAR xleng, yleng, xoff, yoff: C.int;    );

<* EXTERNAL c_plgra *>
PROCEDURE plgra ();

<* EXTERNAL c_plgspa *>
PROCEDURE plgspa (VAR xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plgstrm *>
PROCEDURE plgstrm (VAR strm: C.int; );

<* EXTERNAL c_plgvpd *>
PROCEDURE plgvpd (VAR xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plgvpw *>
PROCEDURE plgvpw (VAR xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plgxax *>
PROCEDURE plgxax (VAR digmax, digits: C.int; );

<* EXTERNAL c_plgyax *>
PROCEDURE plgyax (VAR digmax, digits: C.int; );

<* EXTERNAL c_plgzax *>
PROCEDURE plgzax (VAR digmax, digits: C.int; );

<* EXTERNAL c_plhist *>
PROCEDURE plhist (         n             : C.int;
                  READONLY x             : (*ARRAY OF*) C.double;
                           datmin, datmax: C.double;
                           nbin, oldwin  : C.int;                 );

<* EXTERNAL c_plhls *>
PROCEDURE plhls (h, l, s: C.double; );

<* EXTERNAL c_plinit *>
PROCEDURE plinit ();

<* EXTERNAL c_pljoin *>
PROCEDURE pljoin (x1, y1, x2, y2: C.double; );

<* EXTERNAL c_pllab *>
PROCEDURE pllab (xlabel, ylabel, tlabel: C.char_star; );

<* EXTERNAL c_pllightsource *>
PROCEDURE pllightsource (x, y, z: C.double; );

<* EXTERNAL c_plline *>
PROCEDURE plline (n: C.int; READONLY x, y: (*ARRAY OF*) C.double; );

<* EXTERNAL c_plline3 *>
PROCEDURE plline3 (n: C.int; READONLY x, y, z: (*ARRAY OF*) C.double; );

<* EXTERNAL c_pllsty *>
PROCEDURE pllsty (lin: C.int; );

<* EXTERNAL c_plmesh *>
PROCEDURE plmesh (READONLY x, y: (*ARRAY OF*) C.double;
                  READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                  nx, ny, opt: C.int; );

<* EXTERNAL c_plmeshc *>
PROCEDURE plmeshc (READONLY x, y: (*ARRAY OF*) C.double;
                   READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                            nx, ny, opt: C.int;
                   READONLY clevel     : (*ARRAY OF*) C.double;
                            n          : C.int;                 );

<* EXTERNAL c_plmkstrm *>
PROCEDURE plmkstrm (VAR strm: C.int; );

<* EXTERNAL c_plmtex *>
PROCEDURE plmtex (side           : C.char_star;
                  disp, pos, just: C.double;
                  text           : C.char_star; );

<* EXTERNAL c_plot3d *>
PROCEDURE plot3d (READONLY x, y: (*ARRAY OF*) C.double;
                  READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                  nx, ny, opt, side: C.int; );

<* EXTERNAL c_plot3dc *>
PROCEDURE plot3dc (READONLY x, y: (*ARRAY OF*) C.double;
                   READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                            nx, ny, opt: C.int;
                   READONLY clevel     : (*ARRAY OF*) C.double;
                            n          : C.int;                 );

<* EXTERNAL c_plsurf3d *>
PROCEDURE plsurf3d (READONLY x, y: (*ARRAY OF*) C.double;
                    READONLY z: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                             nx, ny, opt: C.int;
                    READONLY clevel     : (*ARRAY OF*) C.double;
                             n          : C.int;                 );

<* EXTERNAL c_plpat *>
PROCEDURE plpat (n: C.int; READONLY inc, del: C.int; );

<* EXTERNAL c_plpoin *>
PROCEDURE plpoin (         n   : C.int;
                  READONLY x, y: (*ARRAY OF*) C.double;
                           code: C.int;                 );

<* EXTERNAL c_plpoin3 *>
PROCEDURE plpoin3 (         n      : C.int;
                   READONLY x, y, z: (*ARRAY OF*) C.double;
                            code   : C.int;                 );

<* EXTERNAL c_plpoly3 *>
PROCEDURE plpoly3 (         n      : C.int;
                   READONLY x, y, z: (*ARRAY OF*) C.double;
                   READONLY draw   : C.int;
                            flag   : C.int;                 );

<* EXTERNAL c_plprec *>
PROCEDURE plprec (setp, prec: C.int; );

<* EXTERNAL c_plpsty *>
PROCEDURE plpsty (patt: C.int; );

<* EXTERNAL c_plptex *>
PROCEDURE plptex (x, y, dx, dy, just: C.double; text: C.char_star; );

<* EXTERNAL c_plreplot *>
PROCEDURE plreplot ();

<* EXTERNAL c_plschr *>
PROCEDURE plschr (def, scale: C.double; );

<* EXTERNAL c_plscmap0 *>
PROCEDURE plscmap0 (READONLY r, g, b: C.int; n: C.int; );

<* EXTERNAL c_plscmap0n *>
PROCEDURE plscmap0n (ncol0: C.int; );

<* EXTERNAL c_plscmap1 *>
PROCEDURE plscmap1 (READONLY r, g, b: C.int; n: C.int; );

<* EXTERNAL c_plscmap1l *>
PROCEDURE plscmap1l (itype, n: C.int;
                     READONLY pos, coord1, coord2, coord3: (*ARRAY OF*) C.double;
                     READONLY rev: C.int; );

<* EXTERNAL c_plscmap1n *>
PROCEDURE plscmap1n (ncol1: C.int; );

<* EXTERNAL c_plscol0 *>
PROCEDURE plscol0 (icol0, r, g, b: C.int; );

<* EXTERNAL c_plscolbg *>
PROCEDURE plscolbg (r, g, b: C.int; );

<* EXTERNAL c_plscolor *>
PROCEDURE plscolor (color: C.int; );

<* EXTERNAL c_plscompression *>
PROCEDURE plscompression (compression: C.int; );

<* EXTERNAL c_plsdev *>
PROCEDURE plsdev (devname: C.char_star; );

<* EXTERNAL c_plsdidev *>
PROCEDURE plsdidev (mar, aspect, jx, jy: C.double; );

<* EXTERNAL c_plsdimap *>
PROCEDURE plsdimap (dimxmin, dimxmax, dimymin, dimymax: C.int;
                    dimxpmm, dimypmm                  : C.double; );

<* EXTERNAL c_plsdiori *>
PROCEDURE plsdiori (rot: C.double; );

<* EXTERNAL c_plsdiplt *>
PROCEDURE plsdiplt (xmin, ymin, xmax, ymax: C.double; );

<* EXTERNAL c_plsdiplz *>
PROCEDURE plsdiplz (xmin, ymin, xmax, ymax: C.double; );

<* EXTERNAL c_plsesc *>
PROCEDURE plsesc (esc: C.char; );

<* EXTERNAL c_plsetopt *>
PROCEDURE plsetopt (opt, optarg: C.char_star; ): C.int;

<* EXTERNAL c_plsfam *>
PROCEDURE plsfam (fam, num, bmax: C.int; );

<* EXTERNAL c_plsfnam *>
PROCEDURE plsfnam (fnam: C.char_star; );

<* EXTERNAL c_plshades *>
PROCEDURE plshades (READONLY a: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                    nx, ny                : C.int;
                    df                    : PlotterFunc;
                    xmin, xmax, ymin, ymax: C.double;
                    READONLY x: (*ARRAY OF*) C.double;
                    n, fill_width, cont_color, cont_width: C.int;
                    ff                                   : PlotterFunc;
                    rectangular                          : C.int;
                    pltr                                 : PlotterFunc;
                    OBJECT_DATA                          : REFANY;      );

<* EXTERNAL c_plshade *>
PROCEDURE plshade (READONLY a: (*ARRAY OF*) ADDRESS (*REF ARRAY OF R.T*);
                   nx, ny: C.int;
                   df    : PlotterFunc;
                   left, right, bottom, top, shade_min, shade_max: C.double;
                   sh_cmap : C.int;
                   sh_color: C.double;
                   sh_width, min_color, min_width, max_color, max_width: C.int;
                   ff         : PlotterFunc;
                   rectangular: C.int;
                   pltr       : PlotterFunc;
                   OBJECT_DATA: REFANY;      );

<* EXTERNAL c_plsmaj *>
PROCEDURE plsmaj (def, scale: C.double; );

<* EXTERNAL c_plsmin *>
PROCEDURE plsmin (def, scale: C.double; );

<* EXTERNAL c_plsori *>
PROCEDURE plsori (ori: C.int; );

<* EXTERNAL c_plspage *>
PROCEDURE plspage (xp, yp: C.double; xleng, yleng, xoff, yoff: C.int; );

<* EXTERNAL c_plspause *>
PROCEDURE plspause (pause: C.int; );

<* EXTERNAL c_plsstrm *>
PROCEDURE plsstrm (strm: C.int; );

<* EXTERNAL c_plssub *>
PROCEDURE plssub (nx, ny: C.int; );

<* EXTERNAL c_plssym *>
PROCEDURE plssym (def, scale: C.double; );

<* EXTERNAL c_plstar *>
PROCEDURE plstar (nx, ny: C.int; );

<* EXTERNAL c_plstart *>
PROCEDURE plstart (devname: C.char_star; nx, ny: C.int; );

<* EXTERNAL c_plstripa *>
PROCEDURE plstripa (id, pen: C.int; x, y: C.double; );

<* EXTERNAL c_plstripc *>
PROCEDURE plstripc (VAR id          : C.int;
                        xspec, yspec: C.char_star;
                    xmin, xmax, xjump, ymin, ymax, xlpos, ylpos: C.double;
                    y_ascl, acc, colbox, collab                : C.int;
                    READONLY colline, styline: C.int;
                    VAR legline           : ARRAY [0 .. 3] OF C.char_star;
                        labx, laby, labtop: C.char_star;                   );

<* EXTERNAL c_plstripd *>
PROCEDURE plstripd (id: C.int; );

<* EXTERNAL c_plstyl *>
PROCEDURE plstyl (n: C.int; READONLY mark, space: C.int; );

<* EXTERNAL c_plsvpa *>
PROCEDURE plsvpa (xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plsxax *>
PROCEDURE plsxax (digmax, digits: C.int; );

<* EXTERNAL c_plsyax *>
PROCEDURE plsyax (digmax, digits: C.int; );

<* EXTERNAL c_plsym *>
PROCEDURE plsym (         n   : C.int;
                 READONLY x, y: (*ARRAY OF*) C.double;
                          code: C.int;                 );

<* EXTERNAL c_plszax *>
PROCEDURE plszax (digmax, digits: C.int; );

<* EXTERNAL c_pltext *>
PROCEDURE pltext ();

<* EXTERNAL c_plvasp *>
PROCEDURE plvasp (aspect: C.double; );

<* EXTERNAL c_plvpas *>
PROCEDURE plvpas (xmin, xmax, ymin, ymax, aspect: C.double; );

<* EXTERNAL c_plvpor *>
PROCEDURE plvpor (xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plvsta *>
PROCEDURE plvsta ();

<* EXTERNAL c_plw3d *>
PROCEDURE plw3d (basex, basey, height, xmin0, xmax0, ymin0, ymax0, zmin0,
                   zmax0, alt, az: C.double; );

<* EXTERNAL c_plwid *>
PROCEDURE plwid (width: C.int; );

<* EXTERNAL c_plwind *>
PROCEDURE plwind (xmin, xmax, ymin, ymax: C.double; );

<* EXTERNAL c_plxormod *>
PROCEDURE plxormod (mode: C.int; VAR status: C.int; );

<* EXTERNAL plClearOpts *>
PROCEDURE plClearOpts ();

<* EXTERNAL plResetOpts *>
PROCEDURE plResetOpts ();

<* EXTERNAL plSetUsage *>
PROCEDURE plSetUsage (program_string, usage_string: C.char_star; );

<* EXTERNAL plOptUsage *>
PROCEDURE plOptUsage ();

END PLPlotRaw.
