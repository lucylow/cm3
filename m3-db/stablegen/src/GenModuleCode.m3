(* Copyright (C) 1991, Digital Equipment Corporation *)
(* All rights reserved. *)
(* See the file COPYRIGHT for a full description. *)
(* Created by Susan Owicki, rewritten by Carsten Weich *)
(* Last modified on Tue Aug 27 11:23:17 PDT 1996 by najork  *)
(*      modified on Mon Jan 30 15:56:36 PST 1995 by kalsow  *)
(*      modified on Wed Jan  4 09:58:52 PST 1995 by chaiken *)
(*      modified on Wed Sep 28 13:31:01 PDT 1994 by weich *)

(* Produce Modula-3 code for the stable object's implementation *)

MODULE GenModuleCode;

IMPORT Atom, GenTypeCode, Fmt, Formatter, StablegenError, Text,
       ImportList, Type, Value, Wr;

<* FATAL Wr.Failure*>


(* \subsection{Name preambles} The following constants are used to alter
   the user identifier where necessary.  "PreLogMeths" is inserted before
   the name of the updatemethod to get the name recording version of the
   method.  The replaying procedure has "PreReplayMeth" as first part of
   the name.

   To avoid name conflics between user arguments and arguments produced by
   the generator, "PreArgs" is inserted befor argument identifier.
*)
CONST
  PreLogMeths    = "Log_";
  PreReplayMeths = "Replay_";
  SuffArgs       = "_arg";

(* \subsection{Utility procedures and abreviations}
   All procedures that output code in this module use the "Formatter"
   module. The following abreviation is used by all procedures in order
   to get better readable program text:

|    WITH Put    = Formatter.PutText,
|         Nl     = Formatter.NewLine,
|         Tab    = Formatter.Begin,
|         EndTab = Formatter.End      DO

   Often used "Formatter"-procedure sequences are combined in the
   procdures "PutLine".
*)

PROCEDURE PutLine (fmtWr: Formatter.T; text: TEXT) =
  BEGIN
    Formatter.PutText(fmtWr, text);
    Formatter.NewLine(fmtWr, freshLine := FALSE);
  END PutLine;


(* \subsection{Generate procedure calls}
   Several procedure calls are generated by the following procedures.
   "SuperCall()" generates a call to the original update method.
   "StableLogCall()" generates calls to procedures of the "StableLog"
   module.

   The parameters of type "Direction" determin wether the call is
   used in the logging procedure ("Direction.Log") or in the
   replay procedures ("Direction.Replay").
*)

TYPE Direction = {Replay, Log};

PROCEDURE SuperCall (f     : Formatter.T;
                     name  : Type.Qid;
                     method: ImportList.Method;
                     suffix: TEXT;
                     d     : Direction          ) =
  BEGIN
    WITH Put = Formatter.PutText DO
      Put(f, Atom.ToText(name.intf) & ".T."
               & Atom.ToText(method.name));
      Put(f, "(self");
      FOR i := 0 TO LAST(method.sig.formals^) DO
        WITH formals = method.sig.formals[i] DO
          Put(f, ", ");
          Put(f, Atom.ToText(formals.name) & suffix);
          IF d = Direction.Replay
               AND ISTYPE(formals.type, Type.OpenArray) THEN
            Put(f, "^")
          END;
        END;
      END;
      Put(f, ")");
    END (*WITH*)
  END SuperCall;

PROCEDURE StableLogCall (f      : Formatter.T;
                         proc   : TEXT;
                         varName: TEXT;
                         d      : Direction;
                         ranges                 := "") =
  BEGIN
    WITH Put = Formatter.PutText DO
      IF d = Direction.Replay THEN
        Put(f, varName & " := StableLog.In" & proc & "(log"
                 & ranges & ");");
      ELSE
        Put(f, "StableLog.Out" & proc & "(self.log, "
                 & varName & ranges & ");");
      END (*IF*)
    END (*WITH*)
  END StableLogCall;


(* \subsection{Procedure Header}
   Write "MODULE"..., imports ("ImportList.ToText()") and the
   enumeration type "TYPE Methods" used to gather method codes
   ("EnumerateMethods()" below).
*)
PROCEDURE Header (f         : Formatter.T;
                  implName  : TEXT;
                  methods   : ImportList.MethodList;
                  importList: ImportList.T           ) =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine DO
      PutLine(f, "(* This file was generated by the program stablegen *)");
      Nl(f, freshLine := FALSE);
      Put(f, "MODULE " & implName & ";"); Nl(f);
      Nl(f, freshLine := FALSE);
      Put(f, "IMPORT ");
      Put(f, ImportList.ToText(importList) & ";"); Nl(f);
      Nl(f, freshLine := FALSE);
      Put(f, "TYPE ");  Nl(f);
      EnumerateMethods(f, methods);
      Nl(f, freshLine := FALSE);
    END
  END Header;

PROCEDURE EnumerateMethods (f      : Formatter.T;
                            methods: ImportList.MethodList) =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      Put(f, "  Methods = {"); Tab(f);
      FOR i := LAST(methods^) TO 0 BY -1 DO
        IF i < LAST(methods^) THEN Put(f, ", "); END;
        Formatter.Break(
          f, type := Formatter.BreakType.NonOptimal);
        Put(f, Atom.ToText(methods[i].name));
      END;
      Put(f, "};"); Nl(f);
      EndTab(f);
    END
  END EnumerateMethods;


(* \subsection{Procedure Revealation}
   Generate the "REVEAL" of the stable
   subtype.  The opaque supertype revealed is from the generic interface
   which has to be instanciated from outside the stable generator.

   The necessary information passed is: "t" the object to be made stable,
   "f" the writer for the code output, "methods" the list of update
   methods.

   The code produced is a object type which is a subtype of the generic
   "Stable.T".  Hidden fields are "nm", the name of the stable object,
   "log" the log writer, "lm" the log manager object, "forceToDisk" the
   sync boolean.  Overridden methods are those from the generic interface
   and those from the user object.
*)
PROCEDURE Revealation (f      : Formatter.T;
                       repName: TEXT;
                       methods: ImportList.MethodList) =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      Put(f, "REVEAL "); Nl(f);
      Put(f, "  T = "); Tab(f); Tab(f, 2);
      Put(f, repName);
      Put(f, ".Public BRANDED OBJECT");
      Nl(f);
      Put(f, "OVERRIDES");                          Nl(f);
      Put(f, "replayLog:= ReplayLog;");  Nl(f);
      Nl(f);

      FOR i := 0 TO LAST(methods^) DO
        Nl(f, freshLine := FALSE);
        Put(f, Atom.ToText(methods[i].name) & " := ");
        Put(f, PreLogMeths & Atom.ToText(methods[i].name) & ";");
      END;
      EndTab(f);
      Nl(f, freshLine := FALSE);
      Put(f, "END;");
      EndTab(f);
      Nl(f, freshLine := FALSE);
      Nl(f, freshLine := FALSE);
    END;
  END Revealation;


(* \subsection{Procedure Surrogates}
   Produce methods that log their parameters and then start the
   methods of the (unstable) supertype. Output is written to the
   Formatter "f", the name of the supertype is taken from the
   "type" (which is the unstable supertype). The log writing
   surrogate methods are produced for all methods listet in
   "methods". "repName" is the name of the instantiated generic
   part of the generated code.

   A main "FOR" statement loops over all "methods". The code
   generation is split amoung the procedures
   "GenTypeCode.ProcHeader()" (producing "PROCEDURE" header and
   variables), "SurrBody()" (procuding the statements) and
   "SurrErrors()" (producing error handling at the end).
*)
PROCEDURE Surrogates (f      : Formatter.T;
                      name   : Type.Qid;
                      repName: TEXT;
                      methods: ImportList.MethodList)
  RAISES {StablegenError.E} =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      FOR i := 0 TO LAST(methods^) DO
        WITH pname = PreLogMeths
                       & Atom.ToText(methods[i].name) DO
          Nl(f, freshLine := FALSE);
          Tab(f, 2);
          GenTypeCode.ProcHeader(f, pname, methods[i].sig, "_arg");
          PutLine(f, " = ");

          SurrBody(f, name, repName, methods[i]);
          SurrErrors(f);
          Put(f, "END"); (* matches IF self.lm... in SurrBody *)
          EndTab(f); Nl(f);
          Put(f, "END " & pname & ";"); (* matches BEGIN in SurrBody *)
          EndTab(f);
          Nl(f, freshLine := FALSE);
          Formatter.Flush(f);
        END;                     (*WITH*)
      END                        (*FOR*)
    END                          (*WITH*)
  END Surrogates;

PROCEDURE SurrErrors (f: Formatter.T) =
  BEGIN
    WITH Nl     = Formatter.NewLine,
         Put    = Formatter.PutText,
         EndTab = Formatter.End      DO
      PutLine(f, "EXCEPT");
      PutLine(f, "  StableError.E(err) =>");
      PutLine(f, "    <*NOWARN*> StableError.Halt(");
      PutLine(f, "              \"can not flush log (\"& StableError.ToText(err) ");
      PutLine(f, "              & \") in dir \" & self.nm);");
      Put(f, "END");
      EndTab(f);
      Nl(f);
    END (*WITH*)
  END SurrErrors;

(* \subsection{Procedure SurrBody}
   This procedure generates the statements of surrogate methods
   except the error handling "EXCEPT" part of it. Comments mark
   the three parts of this procedure. {\em Prolog:} Output the
   call to eventually reopen the log and the method number recording
   call. {\em Parameter saving:} Output recording calls for every
   parameter of the method. {\em Supercall} Output the call to
   the original update method. {\em Epilog:} Output the commit
   recording call and the log flushing call. The epilog is protected
   by a "TRY FINALLY" statement in case that the logged method
   raises an exception.
*)
PROCEDURE SurrBody (f      : Formatter.T;
                    name   : Type.Qid;
                    repName: TEXT;
                    method : ImportList.Method)
  RAISES {StablegenError.E} =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
    (* Prolog *)
      Tab(f, 2);
      PutLine(f, "BEGIN");
      Tab(f, 2);

    (* Just do Super call if no log manager *)
      PutLine(f, "IF self.lm = NIL THEN");

      IF method.sig.result # NIL THEN Put(f, "RETURN "); END;
      SuperCall(f, name, method, SuffArgs, Direction.Log);
      EndTab(f); Nl(f);
      Tab(f, 2);
      PutLine(f, "ELSE"); (* IF self.lm... *)

      Tab(f, 2);
      PutLine(f, "TRY");
      Put    (f, repName);
      PutLine(f, ".ReOpenLog(self);");
      Put    (f, "StableLog.OutCall(self.log, ORD(Methods.");
      PutLine(f, Atom.ToText(method.name) & "));");

    (* Generate all parameter saving calls *)
      FOR i := 0 TO LAST(method.sig.formals^) DO
        WITH formals = method.sig.formals[i] DO
          MarshalTypedVal(
            f, Atom.ToText(formals.name) & SuffArgs,
            formals.type, Direction.Log, calling := TRUE);
          Nl(f);
        END;
      END;

    (* Do Super call *)
      Tab(f, 2);
      PutLine(f, "TRY");
      IF method.sig.result # NIL THEN Put(f, "RETURN "); END;
      SuperCall(f, name, method, SuffArgs, Direction.Log);
      EndTab(f); Nl(f);

    (* Epilog *)
      Tab(f, 2);
      PutLine(f, "FINALLY");
      PutLine(f, "StableLog.OutCallEndMark(self.log);");
      Put(f, "IF self.forceToDisk THEN self.flushLog() END");
      EndTab(f); Nl(f);
      Put(f, "END");
      EndTab(f); Nl(f);
    END (*DO*)
  END SurrBody;


(* \subsection{Procedure Dispatcher}
   This procedure generates the dispatcher "ReplayLog" which is
   called during recovery.  It reads the log ("StableLog.InCall") in
   an endless loop and calls all replay procedures ("Replay_...")
   accordingly. The loop exits only when an exception occurs during
   respooling. This happens at the end of the log reader.
*)
PROCEDURE Dispatcher (f      : Formatter.T;
                      methods: ImportList.MethodList) =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      Put(f, "\nPROCEDURE ReplayLog(o: T; log: Rd.T) =");
      Put(f, "\n  BEGIN");
      Put(f, "\n    TRY");
      Put(f, "\n      LOOP");
      Tab(f, -1);
      Put(f,
        "\n        CASE VAL(StableLog."
          & "InCall(log, ORD(LAST(Methods))), Methods) OF");
      FOR i := FIRST(methods^) TO LAST(methods^) DO
        Nl(f, freshLine := FALSE);
        Put(f, "| Methods." & Atom.ToText(methods[i].name)
                 & " => ");
        Put(f, PreReplayMeths & Atom.ToText(methods[i].name)
                 & "(o, log);");
      END;
      EndTab(f);
      Put(f, "\n        END (*CASE*)");
      Put(f, "\n      END (*LOOP*)");
      Put(f, "\n    EXCEPT");
      Put(f, "\n     ELSE");
      Put(f, "\n    END;");
      Put(f, "\n  END ReplayLog;\n\n");
    END
  END Dispatcher;


(* \subsection{Procedure ReplayStubs}
   Generate on "f" for object "name" for each method in "methods"
   a replay stub procedure.

   The main "FOR"-loop steps through "methods". The main steps
   performed for each such method is marked by comments below:
   {\em Generate procedure header} generates the header of the
   stub (parameters are always the same: "self" and "log").
   {\em Variable Deklarations:} For each parameter of the
   update method one variable has to be declared (with the same
   type than the parameter). {\em Read in Values:} generate
   calls to read each such parameter from the log. {\em Super call:}
   Now the update method can be called (which is not a super call
   but looks exactly like one). Finally the "END" of the stub
   is generated.
*)
PROCEDURE ReplayStubs (f      : Formatter.T;
                       name   : Type.Qid;
                       methods: ImportList.MethodList)
  RAISES {StablegenError.E} =
  VAR varType: Type.T;
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      FOR i := 0 TO LAST(methods^) DO
      (* Generate procedure header *)
        GenTypeCode.ProcHeader(
          f,
          PreReplayMeths & Atom.ToText(methods[i].name),
          replaySig);
        Put(f, "=\n");

      (* Variable Deklarations for parameter of method: *)
        WITH sig = methods[i].sig DO
          IF NUMBER(sig.formals^) > 0 THEN
            Tab(f, 4);
            Put(f, "  VAR");
            FOR j := 0 TO LAST(sig.formals^) DO
              WITH formals = sig.formals[j] DO
                TYPECASE formals.type OF
                | Type.OpenArray (oa) =>
                    varType := oa.refArray
                ELSE
                  varType := formals.type;
                END;
                Nl(f);
                Put(
                  f, Atom.ToText(formals.name) & SuffArgs
                       & ": " & GenTypeCode.ToText(varType)
                       & ";");
              END;
            END;
            EndTab(f);
          END;

      (* Read in values of parameters: *)
          Nl(f);
          Tab(f, 4);
          PutLine(f, "  BEGIN");
          FOR j := 0 TO LAST(sig.formals^) DO
            WITH formals = sig.formals[j] DO
              MarshalTypedVal(
                f, Atom.ToText(formals.name) & SuffArgs,
                formals.type, Direction.Replay, calling := TRUE);
              Nl(f)
            END
          END;
          PutLine(f, "IF NOT StableLog.CheckCallEndMark(log) THEN");
          PutLine(f, "  RAISE StableLog.Error");
          PutLine(f, "END;");
        END; (*WITH*)

      (* Do Supercall *)
        Tab(f, 2);
        PutLine(f, "TRY");
        IF methods[i].sig.result # NIL THEN Put(f, "EVAL "); END;
        SuperCall(f, name, methods[i], SuffArgs, Direction.Replay);

        EndTab(f);
        Nl(f);
        PutLine(f, "EXCEPT ELSE");
        Put(f, "END");

        (* End Procedure *)
        EndTab(f);
        Nl(f);
        Put(f, "  END " & PreReplayMeths
                 & Atom.ToText(methods[i].name) & ";\n\n");

      END (*FOR*)
    END (*WITH*)
  END ReplayStubs;

(* \subsection{Procedure Checkpoint}
   Generate the call to the checkpointing procedure which is located
   in the generic part of the implementation.
*)
PROCEDURE Checkpoint (f: Formatter.T; repName: TEXT) =
  BEGIN
    WITH Put = Formatter.PutText,
         Nl  = Formatter.NewLine  DO
      PutLine(f, "PROCEDURE Checkpoint(o: T) RAISES {StableError.E} =");
      Nl(f);
      PutLine(f, "  BEGIN");
      Nl(f);
      Put(f, "    ");
      Put(f, repName);
      PutLine(f, ".Checkpoint(o)");
      PutLine(f, "  END Checkpoint;");
      Nl(f, freshLine := FALSE);
    END
  END Checkpoint;

(* \subsection{Marshalling Procedures}
   These procedures generate calls to the "StableLog" module to
   write or read a variable to or from the log.
   "MarshalTypedVal" is the main procedure which takes the
   name "varName" and type "t" of a variable.
*)
PROCEDURE MarshalTypedVal (fmtWr     : Formatter.T;
                           varName   : TEXT;
                           t         : Type.T;
                           d         : Direction;
                           calling   : BOOLEAN;
                           indexDepth                := 0)
  RAISES {StablegenError.E} =
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      TYPECASE t OF
      | Type.Char => StableLogCall(fmtWr, "Char", varName, d);
      | Type.UserDefined (ud) =>
          IF t = Type.boolean THEN
            StableLogCall(fmtWr, "Boolean", varName, d);
          ELSE
            Enumeration(fmtWr, varName, t, d, 0, LAST(ud.elts^));
          END
      | Type.Subrange (sub) =>
          IF t = Type.integer THEN
            StableLogCall(fmtWr, "Integer", varName, d);
          ELSIF t = Type.longint THEN
            StableLogCall(fmtWr, "Longint", varName, d);
          ELSIF t = Type.cardinal THEN
            StableLogCall(fmtWr, "Cardinal", varName, d);
          ELSIF d = Direction.Log THEN       (* no value range check
                                                when writing *)
            IF sub.base = Type.longint THEN
              StableLogCall(fmtWr, "Longint", varName, d);
            ELSE
              StableLogCall(fmtWr, "Integer", varName, d);
            END
          ELSE
            SubRange(fmtWr, varName, t, d, sub.min, sub.max);
          END;
      | Type.Real => StableLogCall(fmtWr, "Real", varName, d);
      | Type.LongReal =>
          StableLogCall(fmtWr, "Longreal", varName, d);
      | Type.Extended =>
          StableLogCall(fmtWr, "Extended", varName, d);
      | Type.Reference (r) =>
          IF Type.MayBeRefAny(r) OR NOT Type.NamedType(r) THEN
            StableLogCall(fmtWr, "Ref", varName, d);
          ELSE
            StableLogCall(fmtWr, "Ref", varName, d);
          END;
      | Type.Array (a) =>
          IF a.index = NIL THEN
            MarshalOpenArray(fmtWr, varName, t, d, calling, indexDepth);
          ELSE
            Tab(fmtWr, 2);
            PutLine(fmtWr, "FOR i" & Fmt.Int(indexDepth) & " := FIRST("
                             & GenTypeCode.ToText(a.index) & ") TO LAST("
                             & GenTypeCode.ToText(a.index) & ") DO");
            MarshalTypedVal(
              fmtWr, varName & "[i" & Fmt.Int(indexDepth) & "]", a.element,
              d, calling, indexDepth + 1);
            EndTab(fmtWr); Nl(fmtWr);
            Put(fmtWr, "END;");
          END;
      | Type.Packed (p) =>
          MarshalTypedVal(fmtWr, varName, p.base, d, calling, indexDepth);
      | Type.Record (rec) =>
          FOR i := 0 TO LAST(rec.fields^) DO
            MarshalTypedVal(
              fmtWr, varName & "." & Atom.ToText(rec.fields[i].name),
              rec.fields[i].type, d, calling, indexDepth);
            IF i < LAST(rec.fields^) THEN Nl(fmtWr) END
          END;
      | Type.Set (s) =>
          IF d = Direction.Replay THEN
            PutLine(fmtWr, varName & ":=" & GenTypeCode.ToText(s) & "{};");
            Tab(fmtWr, 2);
            PutLine(fmtWr, "FOR i" & Fmt.Int(indexDepth) & " := FIRST("
                             & GenTypeCode.ToText(s.range) & ") TO LAST("
                             & GenTypeCode.ToText(s.range) & ") DO");
            Tab(fmtWr, 2);
            PutLine(fmtWr, "IF StableLog.InBoolean(log) THEN");
            Put(fmtWr, varName & " := " & varName & " + "
                             & GenTypeCode.ToText(s) & "{i"
                             & Fmt.Int(indexDepth) & "};");
            EndTab(fmtWr); Nl(fmtWr);
            Put(fmtWr, "END")
          ELSE
            Tab(fmtWr, 2);
            PutLine(fmtWr, "FOR i" & Fmt.Int(indexDepth) & " := FIRST("
                             & GenTypeCode.ToText(s.range) & ") TO LAST("
                             & GenTypeCode.ToText(s.range) & ") DO");
            Put(fmtWr, "StableLog.OutBoolean(self.log, i" & Fmt.Int(indexDepth)
                             & " IN " & varName & ");");
          END;
          EndTab(fmtWr); Nl(fmtWr);
          Put(fmtWr, "END;");
      | Type.Procedure =>
          RAISE StablegenError.E("Can't have a procedure as argument or result "
                              & "of a stable object method.");
      ELSE
        StablegenError.Fatal("runtime error in GenModuleCode");
      END (*TYPECASE*)
    END  (*WITH*)
  END MarshalTypedVal;

PROCEDURE SubRange (fmtWr   : Formatter.T;
                    varName : TEXT;
                    t       : Type.Subrange;
                    d       : Direction;
                    min, max: Value.T) =
  BEGIN
    IF t = Type.longint OR t.base = Type.longint THEN
      WITH min = NARROW(min, Value.Longint).val,
           max = NARROW(max, Value.Longint).val DO
        StableLogCall(fmtWr, "Longint", varName, d,
                      ", 16_" & Fmt.LongUnsigned(min) & ", 16_" & Fmt.LongUnsigned(max));
      END
    ELSIF t = Type.integer OR t.base = Type.integer THEN
      WITH min = NARROW(min, Value.Integer).val,
           max = NARROW(max, Value.Integer).val DO
        StableLogCall(fmtWr, "Integer", varName, d,
                      ", 16_" & Fmt.Unsigned(min) & ", 16_" & Fmt.Unsigned(max));
      END
    ELSE
      TYPECASE t.base OF
      | Type.Enumeration =>
        WITH min = NARROW(min, Value.Integer).val,
             max = NARROW(max, Value.Integer).val DO
          Enumeration(fmtWr, varName, t.base, d, min, max);
        END
      | Type.Subrange => SubRange(fmtWr, varName, t.base, d, min, max);
      ELSE
        StablegenError.Fatal("runtime error in GenModuleCode");
      END (*TYPECASE*)
    END (*IF*)
  END SubRange;

PROCEDURE Enumeration (fmtWr   : Formatter.T;
                       varName : TEXT;
                       t       : Type.Enumeration;
                       d       : Direction;
                       min, max: INTEGER           ) =
  BEGIN
    WITH Put = Formatter.PutText DO
      IF d = Direction.Replay THEN
        Put(fmtWr,
            varName & " := VAL(StableLog.InInteger(log, "
              & Fmt.Int(min) & "," & Fmt.Int(max) & "), "
              & GenTypeCode.ToText(t) & ");");
      ELSE
        Put(fmtWr, "StableLog.OutInteger(self.log, ORD("
                     & varName & "));");
      END (*IF*)
    END (*WITH*)
  END Enumeration;

PROCEDURE MarshalOpenArray (f          : Formatter.T;
                            varName    : TEXT;
                            a          : Type.OpenArray;
                            d          : Direction;
                            calling    : BOOLEAN;
                            indexDepth : INTEGER)
  RAISES {StablegenError.E} =
  VAR
    nDimensions                        := a.openDimensions;
    aName, baseName, boundList: Text.T;
    component                 : Type.T;
  BEGIN
    WITH Put    = Formatter.PutText,
         Nl     = Formatter.NewLine,
         Tab    = Formatter.Begin,
         EndTab = Formatter.End      DO
      IF calling THEN            (* Must marshal/unmarshal
                                    array bounds *)
        IF d = Direction.Log THEN
          StableLogCall(
            f, "Integer", "NUMBER(" & varName & ")", d);
          Nl(f);
          aName := varName & "[0";
          FOR i := 2 TO nDimensions DO
            StableLogCall(
              f, "Integer", "NUMBER(" & aName & "])", d);
            Nl(f);
            aName := aName & ", 0";
          END;
          baseName := varName;
        ELSE
          Put(f, "WITH n1 = StableLog.InInteger(log)");
          boundList := "n1";
          FOR i := 2 TO nDimensions DO
            PutLine(f, ",");
            Put(f, "    n" & Fmt.Int(i)
                     & " = StableLog.InInteger(log)");
            boundList := boundList & ", n" & Fmt.Int(i);
          END;
          PutLine(f, " DO");
          PutLine(f, "  " & varName & " := NEW("
                       & GenTypeCode.ToText(a.refArray)
                       & ", " & boundList & ");");
          PutLine(f, "END;");
          baseName := varName & "^";
        END;
      ELSE
        IF d = Direction.Log THEN
          baseName := varName & "^";
        ELSE
          baseName := varName;
        END;
      END;

      (* Suppress actual data for <*OUTPUT*> params on
         call *)
      Tab(f, 2);
      PutLine(f, "FOR n1 := 0 TO LAST(" & baseName & ") DO");
      aName := varName & "[n1";
      component := a.element;
      FOR i := 2 TO nDimensions DO
        Tab(f, 2);
        PutLine(f, "FOR n" & Fmt.Int(i) & " := 0 TO LAST("
                     & aName & "]) DO");
        aName := aName & ",  n" & Fmt.Int(i);
        component :=
          NARROW(component, Type.OpenArray).element;
      END;
      MarshalTypedVal(
        f, aName & "]", component, d, calling, indexDepth);
      FOR i := 1 TO nDimensions DO
        EndTab(f); Nl(f);
        Put(f, "END;");      (* End FOR Loop *)
      END;
    END
  END MarshalOpenArray;

(* \subsection{Define the signature of replay stubs}
   Since all replay stubs have the same signature, we provide a
   read only global variable "replaySig" that stores this signature.
*)
VAR
  replaySig: Type.Signature;
  replayFormals := NEW(REF ARRAY OF Type.Formal, 1);
  replayExcpt   := NEW(REF ARRAY OF Type.Exception, 1);
BEGIN
  replayFormals[0] :=
    NEW(
      Type.Formal, mode := Type.Mode.Value,
      name := Atom.FromText("log"), default := NIL,
      type := NEW(Type.Object,
                  name := NEW(Type.Qid,
                              intf := Atom.FromText("Rd"),
                              item := Atom.FromText("T"))));
  replayExcpt[0] :=
    NEW(Type.Exception,
        qid :=
          NEW(Type.Qid, intf := Atom.FromText("StableLog"),
              item := Atom.FromText("Error")), arg := NIL);
  replaySig.formals:= replayFormals;
  replaySig.result:= NIL;
  replaySig.raises:= replayExcpt;
END GenModuleCode.
