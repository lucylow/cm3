
GENERIC INTERFACE DiscreteWaveletTransform(S, VS, VSR, MS);

IMPORT NADefinitions AS NA;

CONST Brand = "DiscreteWaveletTransform";

TYPE
  IndexType = INTEGER;
  SizeType = CARDINAL;
  ScalingType = CARDINAL;
  SignalPP = ARRAY OF S.T;

PROCEDURE FilterBankToPolyphase (READONLY x      : VS.TBody;
                                          scaling: ScalingType; ): MS.T;
(*'scaling' is the factor of sub-sampling which may differ from the number
   of channels, in that case the polyphase matrix is not square.*)

PROCEDURE PolyphaseToFilterBank (READONLY x: MS.TBody; ): VS.T;
(*scaling=NUMBER(x[0])*)

PROCEDURE FilterBankAnalysisSingle (         x      : S.T;
                                    READONLY filter : VS.TBody;
                                             scaling: ScalingType; ): VS.T;
(*Transform signal x into NUMBER(y) channels downsampled by 'scaling'*)

PROCEDURE FilterBankSynthesisSingle (READONLY x, filter: VS.TBody;
                                              scaling  : ScalingType; ):
  S.T RAISES {NA.Error};
(*Transform NUMBER(y) downsampled channels into one signal*)

<*INLINE*>
PROCEDURE FilterBankAnalysisTISingle (x: S.T; READONLY filter: VS.TBody; ):
  VS.T;

CONST
  FilterBankSynthesisTISingle: PROCEDURE (READONLY x, filter: VS.TBody; ):
                                 S.T RAISES {NA.Error} = VSR.Dot;

TYPE
  WaveletCoeffs = RECORD
                    low : S.T;
                    high: MS.T;
                  END;

  DyadicWaveletCoeffs = RECORD
                          low : S.T;
                          high: VS.T;
                        END;

(*
PROCEDURE FilterBankAnalysis (         x        : S.T;
                               READONLY y        : VS.TBody;
                                        numLevels: CARDINAL; ):
  WaveletCoeffs;
*)

PROCEDURE DyadicFilterBankAnalysis (         x: S.T;
                                    READONLY y: ARRAY [0 .. 1] OF S.T;
                                    numLevels: CARDINAL; ):
  DyadicWaveletCoeffs;
(*Transform signal x into 'numLevels' frequency bands with octave distance
   and one low frequency band.*)

PROCEDURE DyadicFilterBankSynthesis (READONLY x: DyadicWaveletCoeffs;
                                     READONLY y: ARRAY [0 .. 1] OF S.T; ):
  S.T;
(*Transform sub bands into the original signal.  The reconstructed signal
   will be longer than the original one but the extra values should be zero
   if the filter bank allows for perfect reconstruction.*)

PROCEDURE DyadicFilterBankAnalysisTI (         x: S.T;
                                    READONLY y: ARRAY [0 .. 1] OF S.T;
                                    numLevels: CARDINAL; ):
  DyadicWaveletCoeffs;
(*Translation invariant transform, 
this is achieved by omitting the subsampling.*)

PROCEDURE DyadicFilterBankSynthesisTI (READONLY x: DyadicWaveletCoeffs;
                                     READONLY y: ARRAY [0 .. 1] OF S.T; ):
  S.T;

END DiscreteWaveletTransform.
