GENERIC INTERFACE MatrixFmtLex(RF, M);
(*Copyright (c) 1996, m3na project*)
(*
FROM NADefinitions IMPORT Error;
*)
IMPORT Rd, Wr, Thread;
IMPORT Lex AS L;
IMPORT FloatMode;


TYPE T = M.T;

TYPE
  FmtStyle = RECORD
               width    : CARDINAL := 12;
               elemStyle           := RF.FmtStyle{};
             END;

PROCEDURE Fmt (x: T; READONLY style := FmtStyle{}): TEXT
  RAISES {Thread.Alerted, Wr.Failure};

TYPE TexStyle = RECORD elemStyle := RF.TexStyle{};  END;

PROCEDURE Tex (x: T; READONLY style := TexStyle{}): TEXT
  RAISES {Thread.Alerted, Wr.Failure};

TYPE
  LexStyle = RECORD
               sep       := ' ';
               elemStyle := RF.LexStyle{};
             END;

PROCEDURE Lex (rd: Rd.T; READONLY style := LexStyle{}; ): T
  RAISES {L.Error, FloatMode.Trap, Rd.Failure, Thread.Alerted};

END MatrixFmtLex.
