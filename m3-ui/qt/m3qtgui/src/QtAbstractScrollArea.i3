(*******************************************************************************
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
*******************************************************************************)

INTERFACE QtAbstractScrollArea;

FROM QtScrollBar IMPORT QScrollBar;
FROM QtSize IMPORT QSize;
FROM QGuiStubs IMPORT QWidgetList;
FROM QtWidget IMPORT QWidget;
FROM QtNamespace IMPORT ScrollBarPolicy, AlignmentFlag;


FROM QtFrame IMPORT QFrame;

TYPE T = QAbstractScrollArea;


TYPE
  QAbstractScrollArea <: QAbstractScrollAreaPublic;
  QAbstractScrollAreaPublic =
    QFrame BRANDED OBJECT
    METHODS
      init_0                     (parent: QWidget; ): QAbstractScrollArea;
      init_1                     (): QAbstractScrollArea;
      verticalScrollBarPolicy    (): ScrollBarPolicy;
      setVerticalScrollBarPolicy (arg1: ScrollBarPolicy; );
      verticalScrollBar          (): QScrollBar;
      setVerticalScrollBar       (scrollbar: QScrollBar; );
      horizontalScrollBarPolicy  (): ScrollBarPolicy;
      setHorizontalScrollBarPolicy (arg1: ScrollBarPolicy; );
      horizontalScrollBar          (): QScrollBar;
      setHorizontalScrollBar       (scrollbar: QScrollBar; );
      cornerWidget                 (): QWidget;
      setCornerWidget              (widget: QWidget; );
      addScrollBarWidget  (widget: QWidget; alignment: AlignmentFlag; );
      scrollBarWidgets    (alignment: AlignmentFlag; ): QWidgetList;
      viewport            (): QWidget;
      setViewport         (widget: QWidget; );
      maximumViewportSize (): QSize;
      minimumSizeHint     (): QSize; (* virtual *)
      sizeHint            (): QSize; (* virtual *)
      destroyCxx          ();
    END;


END QtAbstractScrollArea.
