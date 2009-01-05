(* Copyright (C) 1990, Digital Equipment Corporation.                 *)
(* All rights reserved.                                               *)
(* See the file COPYRIGHT for a full description.                     *)

<*EXTERNAL*> INTERFACE Usignal;

FROM Ctypes IMPORT int;
FROM Utypes IMPORT pid_t;
IMPORT Usysdep;

CONST
  SIGHUP = Usysdep.SIGHUP;
  SIGINT = Usysdep.SIGINT;
  SIGQUIT = Usysdep.SIGQUIT;
  SIGABRT = Usysdep.SIGABRT;
  SIGKILL = Usysdep.SIGKILL;
  SIGSEGV = Usysdep.SIGSEGV;
  SIGPIPE = Usysdep.SIGPIPE;
  SIGTERM = Usysdep.SIGTERM;

  NSIG = Usysdep.NSIG;

  (* flags in struct_sigaction *)
  SA_RESTART = Usysdep.SA_RESTART; (* Restart syscall on signal return. *)
  SA_SIGINFO = Usysdep.SA_SIGINFO; (* three parameter signal callback vs. one parameter *)

TYPE
  SignalActionHandler = Usysdep.SignalActionHandler;
  SignalHandler = Usysdep.SignalHandler;
  sigset_t = Usysdep.sigset_t;
  siginfo_t_star = Usysdep.siginfo_t_star;

  struct_sigaction = Usysdep.struct_sigaction;

PROCEDURE kill (pid: pid_t; sig: int): int;

PROCEDURE sigaction (sig: int; READONLY act: struct_sigaction; VAR oact: struct_sigaction): int;
PROCEDURE sigdelset (VAR set: sigset_t; signo: int): int;
PROCEDURE sigemptyset (VAR set: sigset_t): int;
PROCEDURE sigfillset (VAR set: sigset_t): int;
PROCEDURE sigpending (VAR set: sigset_t): int;
PROCEDURE sigprocmask (how: int; READONLY set: sigset_t; VAR oset: sigset_t): int;
PROCEDURE sigsuspend (READONLY set: sigset_t): int;
PROCEDURE sigwait (READONLY set: sigset_t; VAR sig: int): int;

END Usignal.
