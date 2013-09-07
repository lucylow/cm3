(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtLineEditRaw;


IMPORT Ctypes AS C;




<* EXTERNAL New_QLineEdit0 *>
PROCEDURE New_QLineEdit0 (parent: ADDRESS; ): QLineEdit;

<* EXTERNAL New_QLineEdit1 *>
PROCEDURE New_QLineEdit1 (): QLineEdit;

<* EXTERNAL New_QLineEdit2 *>
PROCEDURE New_QLineEdit2 (arg1, parent: ADDRESS; ): QLineEdit;

<* EXTERNAL New_QLineEdit3 *>
PROCEDURE New_QLineEdit3 (arg1: ADDRESS; ): QLineEdit;

<* EXTERNAL Delete_QLineEdit *>
PROCEDURE Delete_QLineEdit (self: QLineEdit; );

<* EXTERNAL QLineEdit_text *>
PROCEDURE QLineEdit_text (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_displayText *>
PROCEDURE QLineEdit_displayText (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_placeholderText *>
PROCEDURE QLineEdit_placeholderText (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_setPlaceholderText *>
PROCEDURE QLineEdit_setPlaceholderText (self: QLineEdit; arg2: ADDRESS; );

<* EXTERNAL QLineEdit_maxLength *>
PROCEDURE QLineEdit_maxLength (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_setMaxLength *>
PROCEDURE QLineEdit_setMaxLength (self: QLineEdit; arg2: C.int; );

<* EXTERNAL QLineEdit_setFrame *>
PROCEDURE QLineEdit_setFrame (self: QLineEdit; arg2: BOOLEAN; );

<* EXTERNAL QLineEdit_hasFrame *>
PROCEDURE QLineEdit_hasFrame (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_echoMode *>
PROCEDURE QLineEdit_echoMode (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_setEchoMode *>
PROCEDURE QLineEdit_setEchoMode (self: QLineEdit; arg2: C.int; );

<* EXTERNAL QLineEdit_isReadOnly *>
PROCEDURE QLineEdit_isReadOnly (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_setReadOnly *>
PROCEDURE QLineEdit_setReadOnly (self: QLineEdit; arg2: BOOLEAN; );

<* EXTERNAL QLineEdit_setValidator *>
PROCEDURE QLineEdit_setValidator (self: QLineEdit; arg2: ADDRESS; );

<* EXTERNAL QLineEdit_validator *>
PROCEDURE QLineEdit_validator (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_setCompleter *>
PROCEDURE QLineEdit_setCompleter (self: QLineEdit; completer: ADDRESS; );

<* EXTERNAL QLineEdit_completer *>
PROCEDURE QLineEdit_completer (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_sizeHint *>
PROCEDURE QLineEdit_sizeHint (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_minimumSizeHint *>
PROCEDURE QLineEdit_minimumSizeHint (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_cursorPosition *>
PROCEDURE QLineEdit_cursorPosition (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_setCursorPosition *>
PROCEDURE QLineEdit_setCursorPosition (self: QLineEdit; arg2: C.int; );

<* EXTERNAL QLineEdit_cursorPositionAt *>
PROCEDURE QLineEdit_cursorPositionAt (self: QLineEdit; pos: ADDRESS; ):
  C.int;

<* EXTERNAL QLineEdit_setAlignment *>
PROCEDURE QLineEdit_setAlignment (self: QLineEdit; flag: C.int; );

<* EXTERNAL QLineEdit_alignment *>
PROCEDURE QLineEdit_alignment (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_cursorForward *>
PROCEDURE QLineEdit_cursorForward
  (self: QLineEdit; mark: BOOLEAN; steps: C.int; );

<* EXTERNAL QLineEdit_cursorForward1 *>
PROCEDURE QLineEdit_cursorForward1 (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_cursorBackward *>
PROCEDURE QLineEdit_cursorBackward
  (self: QLineEdit; mark: BOOLEAN; steps: C.int; );

<* EXTERNAL QLineEdit_cursorBackward1 *>
PROCEDURE QLineEdit_cursorBackward1 (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_cursorWordForward *>
PROCEDURE QLineEdit_cursorWordForward (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_cursorWordBackward *>
PROCEDURE QLineEdit_cursorWordBackward (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_backspace *>
PROCEDURE QLineEdit_backspace (self: QLineEdit; );

<* EXTERNAL QLineEdit_del *>
PROCEDURE QLineEdit_del (self: QLineEdit; );

<* EXTERNAL QLineEdit_home *>
PROCEDURE QLineEdit_home (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_end *>
PROCEDURE QLineEdit_end (self: QLineEdit; mark: BOOLEAN; );

<* EXTERNAL QLineEdit_isModified *>
PROCEDURE QLineEdit_isModified (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_setModified *>
PROCEDURE QLineEdit_setModified (self: QLineEdit; arg2: BOOLEAN; );

<* EXTERNAL QLineEdit_setSelection *>
PROCEDURE QLineEdit_setSelection (self: QLineEdit; arg2, arg3: C.int; );

<* EXTERNAL QLineEdit_hasSelectedText *>
PROCEDURE QLineEdit_hasSelectedText (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_selectedText *>
PROCEDURE QLineEdit_selectedText (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_selectionStart *>
PROCEDURE QLineEdit_selectionStart (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_isUndoAvailable *>
PROCEDURE QLineEdit_isUndoAvailable (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_isRedoAvailable *>
PROCEDURE QLineEdit_isRedoAvailable (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_setDragEnabled *>
PROCEDURE QLineEdit_setDragEnabled (self: QLineEdit; b: BOOLEAN; );

<* EXTERNAL QLineEdit_dragEnabled *>
PROCEDURE QLineEdit_dragEnabled (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_setCursorMoveStyle *>
PROCEDURE QLineEdit_setCursorMoveStyle (self: QLineEdit; style: C.int; );

<* EXTERNAL QLineEdit_cursorMoveStyle *>
PROCEDURE QLineEdit_cursorMoveStyle (self: QLineEdit; ): C.int;

<* EXTERNAL QLineEdit_inputMask *>
PROCEDURE QLineEdit_inputMask (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_setInputMask *>
PROCEDURE QLineEdit_setInputMask (self: QLineEdit; inputMask: ADDRESS; );

<* EXTERNAL QLineEdit_hasAcceptableInput *>
PROCEDURE QLineEdit_hasAcceptableInput (self: QLineEdit; ): BOOLEAN;

<* EXTERNAL QLineEdit_setTextMargins *>
PROCEDURE QLineEdit_setTextMargins
  (self: QLineEdit; left, top, right, bottom: C.int; );

<* EXTERNAL QLineEdit_setTextMargins1 *>
PROCEDURE QLineEdit_setTextMargins1 (self: QLineEdit; margins: ADDRESS; );

<* EXTERNAL QLineEdit_getTextMargins *>
PROCEDURE QLineEdit_getTextMargins
  (self: QLineEdit; left, top, right, bottom: C.int; );

<* EXTERNAL QLineEdit_textMargins *>
PROCEDURE QLineEdit_textMargins (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_setText *>
PROCEDURE QLineEdit_setText (self: QLineEdit; arg2: ADDRESS; );

<* EXTERNAL QLineEdit_clear *>
PROCEDURE QLineEdit_clear (self: QLineEdit; );

<* EXTERNAL QLineEdit_selectAll *>
PROCEDURE QLineEdit_selectAll (self: QLineEdit; );

<* EXTERNAL QLineEdit_undo *>
PROCEDURE QLineEdit_undo (self: QLineEdit; );

<* EXTERNAL QLineEdit_redo *>
PROCEDURE QLineEdit_redo (self: QLineEdit; );

<* EXTERNAL QLineEdit_cut *>
PROCEDURE QLineEdit_cut (self: QLineEdit; );

<* EXTERNAL QLineEdit_copy *>
PROCEDURE QLineEdit_copy (self: QLineEdit; );

<* EXTERNAL QLineEdit_paste *>
PROCEDURE QLineEdit_paste (self: QLineEdit; );

<* EXTERNAL QLineEdit_deselect *>
PROCEDURE QLineEdit_deselect (self: QLineEdit; );

<* EXTERNAL QLineEdit_insert *>
PROCEDURE QLineEdit_insert (self: QLineEdit; arg2: ADDRESS; );

<* EXTERNAL QLineEdit_createStandardContextMenu *>
PROCEDURE QLineEdit_createStandardContextMenu (self: QLineEdit; ): ADDRESS;

<* EXTERNAL QLineEdit_event *>
PROCEDURE QLineEdit_event (self: QLineEdit; arg2: ADDRESS; ): BOOLEAN;

TYPE QLineEdit = ADDRESS;

END QtLineEditRaw.
