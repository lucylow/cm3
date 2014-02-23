/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#define SWIGMODULA3


#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__)) 
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__)) 
# else
#   define SWIGUNUSED 
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif 
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED 
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#  ifndef GCC_HASCLASSVISIBILITY
#    define GCC_HASCLASSVISIBILITY
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif 
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif




#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#include <QtGui/qlabel.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QLabel * New_QLabel0(QWidget * parent, Qt::WindowFlags f) {
  QWidget *arg1 = (QWidget *) 0 ;
  Qt::WindowFlags arg2 ;
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  arg2 = (Qt::WindowFlags)f; 
  result = (QLabel *)new QLabel(arg1,arg2);
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLabel * New_QLabel1(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QLabel *)new QLabel(arg1);
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLabel * New_QLabel2() {
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  result = (QLabel *)new QLabel();
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLabel * New_QLabel3(QString * text, QWidget * parent, Qt::WindowFlags f) {
  QString *arg1 = 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  Qt::WindowFlags arg3 ;
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  arg1 = *(QString **)&text;
  arg2 = *(QWidget **)&parent; 
  arg3 = (Qt::WindowFlags)f; 
  result = (QLabel *)new QLabel((QString const &)*arg1,arg2,arg3);
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLabel * New_QLabel4(QString * text, QWidget * parent) {
  QString *arg1 = 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  arg1 = *(QString **)&text;
  arg2 = *(QWidget **)&parent; 
  result = (QLabel *)new QLabel((QString const &)*arg1,arg2);
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QLabel * New_QLabel5(QString * text) {
  QString *arg1 = 0 ;
  QLabel *result = 0 ;
  QLabel * cresult ;
  
  arg1 = *(QString **)&text;
  result = (QLabel *)new QLabel((QString const &)*arg1);
  *(QLabel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QLabel(QLabel * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  
  arg1 = *(QLabel **)&self; 
  delete arg1;
}


SWIGEXPORT QString * QLabel_text(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QString * cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QLabel const *)arg1)->text());
  return cresult;
}


SWIGEXPORT QPixmap * QLabel_pixmap(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QPixmap *result = 0 ;
  QPixmap * cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (QPixmap *)((QLabel const *)arg1)->pixmap();
  *(QPixmap **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QPicture * QLabel_picture(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QPicture *result = 0 ;
  QPicture * cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (QPicture *)((QLabel const *)arg1)->picture();
  *(QPicture **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QMovie * QLabel_movie(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QMovie *result = 0 ;
  QMovie * cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (QMovie *)((QLabel const *)arg1)->movie();
  *(QMovie **)&cresult = result; 
  return cresult;
}


SWIGEXPORT Qt::TextFormat QLabel_textFormat(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::TextFormat result;
  Qt::TextFormat cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (Qt::TextFormat)((QLabel const *)arg1)->textFormat();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setTextFormat(QLabel * self, Qt::TextFormat m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::TextFormat arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (Qt::TextFormat)m3arg2; 
  (arg1)->setTextFormat(arg2);
}


SWIGEXPORT Qt::Alignment QLabel_alignment(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::Alignment cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(Qt::Alignment **)&cresult = new Qt::Alignment((const Qt::Alignment &)((QLabel const *)arg1)->alignment());
  return cresult;
}


SWIGEXPORT void QLabel_setAlignment(QLabel * self, Qt::Alignment m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::Alignment arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (Qt::Alignment)m3arg2; 
  (arg1)->setAlignment(arg2);
}


SWIGEXPORT void QLabel_setWordWrap(QLabel * self, bool on) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = on ? true : false; 
  (arg1)->setWordWrap(arg2);
}


SWIGEXPORT bool QLabel_wordWrap(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (bool)((QLabel const *)arg1)->wordWrap();
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QLabel_indent(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (int)((QLabel const *)arg1)->indent();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setIndent(QLabel * self, int m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  int arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (int)m3arg2; 
  (arg1)->setIndent(arg2);
}


SWIGEXPORT int QLabel_margin(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (int)((QLabel const *)arg1)->margin();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setMargin(QLabel * self, int m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  int arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (int)m3arg2; 
  (arg1)->setMargin(arg2);
}


SWIGEXPORT bool QLabel_hasScaledContents(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (bool)((QLabel const *)arg1)->hasScaledContents();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setScaledContents(QLabel * self, bool m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setScaledContents(arg2);
}


SWIGEXPORT QSize * QLabel_sizeHint(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QLabel const *)arg1)->sizeHint());
  return cresult;
}


SWIGEXPORT QSize * QLabel_minimumSizeHint(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QLabel const *)arg1)->minimumSizeHint());
  return cresult;
}


SWIGEXPORT void QLabel_setBuddy(QLabel * self, QWidget * m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  QWidget *arg2 = (QWidget *) 0 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = *(QWidget **)&m3arg2; 
  (arg1)->setBuddy(arg2);
}


SWIGEXPORT QWidget * QLabel_buddy(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QWidget *result = 0 ;
  QWidget * cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (QWidget *)((QLabel const *)arg1)->buddy();
  *(QWidget **)&cresult = result; 
  return cresult;
}


SWIGEXPORT int QLabel_heightForWidth(QLabel const * self, int m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  int arg2 ;
  int result;
  int cresult ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (int)m3arg2; 
  result = (int)((QLabel const *)arg1)->heightForWidth(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QLabel_openExternalLinks(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (bool)((QLabel const *)arg1)->openExternalLinks();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setOpenExternalLinks(QLabel * self, bool open) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = open ? true : false; 
  (arg1)->setOpenExternalLinks(arg2);
}


SWIGEXPORT void QLabel_setTextInteractionFlags(QLabel * self, Qt::TextInteractionFlags flags) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::TextInteractionFlags arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (Qt::TextInteractionFlags)flags; 
  (arg1)->setTextInteractionFlags(arg2);
}


SWIGEXPORT Qt::TextInteractionFlags QLabel_textInteractionFlags(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  Qt::TextInteractionFlags cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(Qt::TextInteractionFlags **)&cresult = new Qt::TextInteractionFlags((const Qt::TextInteractionFlags &)((QLabel const *)arg1)->textInteractionFlags());
  return cresult;
}


SWIGEXPORT void QLabel_setSelection(QLabel * self, int m3arg2, int m3arg3) {
  QLabel *arg1 = (QLabel *) 0 ;
  int arg2 ;
  int arg3 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (int)m3arg2; 
  arg3 = (int)m3arg3; 
  (arg1)->setSelection(arg2,arg3);
}


SWIGEXPORT bool QLabel_hasSelectedText(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (bool)((QLabel const *)arg1)->hasSelectedText();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QString * QLabel_selectedText(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  QString * cresult ;
  
  arg1 = *(QLabel **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QLabel const *)arg1)->selectedText());
  return cresult;
}


SWIGEXPORT int QLabel_selectionStart(QLabel const * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QLabel **)&self; 
  result = (int)((QLabel const *)arg1)->selectionStart();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QLabel_setText(QLabel * self, QString * m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = *(QString **)&m3arg2;
  (arg1)->setText((QString const &)*arg2);
}


SWIGEXPORT void QLabel_setPixmap(QLabel * self, QPixmap * m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  QPixmap *arg2 = 0 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = *(QPixmap **)&m3arg2;
  (arg1)->setPixmap((QPixmap const &)*arg2);
}


SWIGEXPORT void QLabel_setPicture(QLabel * self, QPicture * m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  QPicture *arg2 = 0 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = *(QPicture **)&m3arg2;
  (arg1)->setPicture((QPicture const &)*arg2);
}


SWIGEXPORT void QLabel_setMovie(QLabel * self, QMovie * movie) {
  QLabel *arg1 = (QLabel *) 0 ;
  QMovie *arg2 = (QMovie *) 0 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = *(QMovie **)&movie; 
  (arg1)->setMovie(arg2);
}


SWIGEXPORT void QLabel_setNum(QLabel * self, int m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  int arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (int)m3arg2; 
  (arg1)->setNum(arg2);
}


SWIGEXPORT void QLabel_setNum1(QLabel * self, double m3arg2) {
  QLabel *arg1 = (QLabel *) 0 ;
  double arg2 ;
  
  arg1 = *(QLabel **)&self; 
  arg2 = (double)m3arg2; 
  (arg1)->setNum(arg2);
}


SWIGEXPORT void QLabel_clear(QLabel * self) {
  QLabel *arg1 = (QLabel *) 0 ;
  
  arg1 = *(QLabel **)&self; 
  (arg1)->clear();
}


SWIGEXPORT long Modula3_QLabelToQFrame(long objectRef) {
    long baseptr = 0;
    *(QFrame **)&baseptr = *(QLabel **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

