(*  -*- modula-3 -*-
 *
 * Test Tred[1234].
 *)
MODULE TestEigenSystem EXPORTS Test;

IMPORT LongRealEigenSystem    AS EigenSys,
       LongRealCharPolynomial AS CP,
       LongRealMatrixFast     AS M,
       LongRealVectorFast     AS V,
       LongRealPolynomialFast AS P,
       LongRealBasic          AS R,
       LongRealMatrixFmtLex     AS MF,
       LongRealPolynomialFmtLex AS PF;
IMPORT Wr, Stdio, Thread, Fmt, xUtils;

<* FATAL Wr.Failure *>
<* FATAL Thread.Alerted *>
<* FATAL EigenSys.NoConvergence *>
<* FATAL EigenSys.ArraySizesDontMatch *>

(*=======================*)
CONST
  Module = "TestEigenSystem.";

PROCEDURE Print2(d,e: V.T;
        READONLY dWR, eWR: V.TBody) RAISES {}=
  BEGIN
    Wr.PutText(Stdio.stdout, Fmt.Pad("i",4) &
      Fmt.Pad("Diagonale",18) &
      Fmt.Pad("Sub-Diagonale",18) &"\n" );
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.Int(i),2) &
        Fmt.Pad(Fmt.LongReal(d[i],Fmt.Style.Sci,12),19) &
        Fmt.Pad(Fmt.LongReal(e[i],Fmt.Style.Sci,12),19) &"\n");
    END; (* for *)
    Wr.PutText( Stdio.stdout, "\nVergleich mit Wilkinson-Reinsch:\n");
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.Int(i),4) &
        Fmt.Pad(Fmt.LongReal(d[i]-dWR[i]),18) &
        Fmt.Pad(Fmt.LongReal(e[i]-eWR[i]),18) &"\n");
    END; (* for *)
    
  END Print2;

PROCEDURE Print3(d,e,e2 : V.T;
        READONLY dWR,eWR,e2WR: V.TBody) RAISES {}=
  BEGIN
    Wr.PutText(Stdio.stdout, Fmt.Pad("i",4) &
      Fmt.Pad("Diagonale",18) &
      Fmt.Pad("Sub-Diagonale",18) &
      Fmt.Pad("Sub-Diagonale**2",18) &"\n" );
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.Int(i),2) &
        Fmt.Pad(Fmt.LongReal(d[i],Fmt.Style.Sci,12),19) &
        Fmt.Pad(Fmt.LongReal(e[i],Fmt.Style.Sci,12),19) &
        Fmt.Pad(Fmt.LongReal(e2[i],Fmt.Style.Sci,12),19) &"\n");
    END; (* for *)
    Wr.PutText( Stdio.stdout, "\nVergleich mit Wilkinson-Reinsch:\n");
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.Int(i),4) &
        Fmt.Pad(Fmt.LongReal(d[i]-dWR[i]),18) &
        Fmt.Pad(Fmt.LongReal(e[i]-eWR[i]),18) &
        Fmt.Pad(Fmt.LongReal(e2[i]-e2WR[i]),18) &"\n");
    END; (* for *)
    
  END Print3;


PROCEDURE RunTql1(VAR d,e: V.T) RAISES {}=
  BEGIN
    EigenSys.Tql1( d, e);
    Wr.PutText(Stdio.stdout, "Eigenwerte\n");
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText( Stdio.stdout, Fmt.Pad(Fmt.LongReal( d[i],prec:=12),20) & "\n");
    END; (* for *)
  END RunTql1;

PROCEDURE RunTql2(VAR d,e: V.T;
                  VAR z: M.T) RAISES {}=
  BEGIN
    EigenSys.Tql2( d, e, z);
    Wr.PutText(Stdio.stdout, "Eigenwerte\n");
    FOR i:=FIRST(d^) TO LAST(d^) DO
      Wr.PutText( Stdio.stdout, Fmt.Pad(Fmt.LongReal( d[i],prec:=12),20) & "\n");
    END; (* for *)
  END RunTql2;

PROCEDURE RunTred1(a: M.T;
          READONLY dWR, eWR, e2WR: V.TBody) 
    RAISES {}=
  VAR
    z: M.T;
    d, e, e2: V.T;
  BEGIN
    z := NEW( M.T, NUMBER(a^), NUMBER(a[0]));
    d := NEW( V.T, NUMBER(a^));
    e := NEW( V.T, NUMBER(a^));
    e2:= NEW( V.T, NUMBER(a^));
    FOR i:=FIRST(z^) TO LAST(z^) DO
      FOR j:=FIRST(z[0]) TO LAST(z[0]) DO
        z[i,j] := a[i,j];
      END; (* for *)
    END; (* for *)
    EigenSys.Tred1( NUMBER(d^), z, d, e, e2);
    Print3( d, e, e2, dWR, eWR, e2WR);
    RunTql1( d,e);
  END RunTred1;

PROCEDURE RunTred2(a: M.T; 
               VAR dWR, eWR: V.TBody;) RAISES {}=
  VAR
    aLocal: M.T;
    d, e: V.T;
  BEGIN
    aLocal := NEW( M.T, NUMBER(a^), NUMBER(a[0]));
    d := NEW( V.T, NUMBER(a^));
    e := NEW( V.T, NUMBER(a^));
    FOR i:=FIRST(a^) TO LAST(a^) DO
      FOR j:=FIRST(a[0]) TO LAST(a[0]) DO
        aLocal[i,j] := a[i,j];
      END; (* for *)
    END; (* for *)
    EigenSys.Tred2( NUMBER(d^), aLocal, d, e);
    dWR[1] := -dWR[1];
    Print2( d, e, dWR, eWR);
    dWR[1] := -dWR[1];
    Wr.PutText(Stdio.stdout, "Transformationsmatrix\n");
    FOR i:=FIRST(a^) TO LAST(a^) DO
      FOR j:=FIRST(a[0]) TO LAST(a[0]) DO
        Wr.PutText( Stdio.stdout, Fmt.Pad(Fmt.LongReal(aLocal[i,j],prec:=10),15));
      END; (* for *)
      Wr.PutText( Stdio.stdout, "\n");
    END; (* for *)
    RunTql2( d,e,aLocal);
  END RunTred2;



PROCEDURE RunTestA() RAISES {}=
  VAR
    a : M.T;
    d,e,e2 : V.T;
    aWR := ARRAY[0..24] OF R.T
             { 10.0D0,  1.0D0,  2.0D0,  3.0D0,  4.0D0,
                1.0D0,  9.0D0, -1.0D0,  2.0D0, -3.0D0,
                2.0D0, -1.0D0,  7.0D0,  3.0D0, -5.0D0,
                3.0D0,  2.0D0,  3.0D0, 12.0D0, -1.0D0,
                4.0D0, -3.0D0, -5.0D0, -1.0D0, 15.0D0}; 
    eWR := ARRAY [0..4] OF R.T
        {0.0d0, 7.49484677741D-1, -4.49626820120D0, 
            -2.15704099085D0, 7.14142842854D0};
    dWR := ARRAY [0..4] OF R.T
        {9.29520217754D0, 1.16267115569D1, 1.09604392078D1,
            6.11764705885D0, 1.5D1};
    e2WR := ARRAY [0..4] OF R.T
        {0.0D0, 5.61727282169D-1, 2.02164277371D1,
             4.65282583621D0, 5.1D1};
  BEGIN
    a := NEW( M.T, 5, 5);
    d := NEW( V.T, 5);
    e := NEW( V.T, 5);
    e2 := NEW( V.T, 5);

    FOR i:=FIRST(a^) TO LAST(a^) DO
      FOR j:=FIRST(a[0]) TO LAST(a[0]) DO
        a[i,j] := aWR[i*NUMBER(a[0])+j];
      END; (* for *)
    END; (* for *)

    Wr.PutText( Stdio.stdout, "Test: Tred1\n");
    FOR i:=FIRST(a^) TO LAST(a^) DO
      FOR j:=FIRST(a[0]) TO LAST(a[0]) DO
        Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.LongReal(a[i,j]),12));
      END; (* for *)
      Wr.PutText( Stdio.stdout, "\n");
    END; (* for *)
    RunTred1(a,dWR,eWR,e2WR);

    Wr.PutText( Stdio.stdout, "Test: Tred2\n");
    FOR i:=FIRST(a^) TO LAST(a^) DO
      FOR j:=FIRST(a[0]) TO LAST(a[0]) DO
        Wr.PutText(Stdio.stdout, Fmt.Pad(Fmt.LongReal(a[i,j]),12));
      END; (* for *)
      Wr.PutText( Stdio.stdout, "\n");
    END; (* for *)
    RunTred2(a,dWR,eWR);

  END RunTestA;

PROCEDURE TestCharPolynomial()=
  <*FATAL xUtils.Error*>
  VAR
    p,cp:P.T;
    m:M.T;
  BEGIN
    p:=P.New(10);
    (*
    FOR j:=0 TO LAST(p^)-1 DO
      p[j]:=FLOAT(j,R.T);
    END;
    p[LAST(p^)]:=R.One;
    *)
    p^:=P.TBody{ 0.0D0, 1.0D0, -3.0D0,  4.0D0, 7.0D0,
                -2.0D0, 4.0D0,  3.0D0, -1.0D0, 5.0D0,
                 1.0D0};
    Msg(Fmt.FN("Polynomial %s\n",ARRAY OF TEXT{PF.Fmt(p)}));
    m:=CP.CompanionMatrix(p);
    Msg(Fmt.FN("Companion %s\n",ARRAY OF TEXT{MF.Fmt(m,MF.FmtStyle{width:=4})}));
    cp:=CP.CharPolynomial(m);
    Msg(Fmt.FN("Characteristic polynomial %s\n",ARRAY OF TEXT{PF.Fmt(cp)}));
    <*ASSERT P.Equal(p,cp)*>
  END TestCharPolynomial;

(*-------------------------*)
PROCEDURE TestEigenSystem():BOOLEAN=
<*UNUSED*> CONST ftn = Module & "TestEigenSystem";
VAR result:=TRUE;
BEGIN
  NewLine(); RunTestA();
  NewLine(); TestCharPolynomial();
  RETURN result;
END TestEigenSystem;
(*=======================*)

BEGIN
END TestEigenSystem.
