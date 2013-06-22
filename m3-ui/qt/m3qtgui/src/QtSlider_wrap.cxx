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


#include <QtGui/qslider.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QSlider * New_QSlider0(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QSlider *result = 0 ;
  QSlider * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QSlider *)new QSlider(arg1);
  *(QSlider **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QSlider * New_QSlider1() {
  QSlider *result = 0 ;
  QSlider * cresult ;
  
  result = (QSlider *)new QSlider();
  *(QSlider **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QSlider * New_QSlider2(Qt::Orientation orientation, QWidget * parent) {
  Qt::Orientation arg1 ;
  QWidget *arg2 = (QWidget *) 0 ;
  QSlider *result = 0 ;
  QSlider * cresult ;
  
  arg1 = (Qt::Orientation)orientation; 
  arg2 = *(QWidget **)&parent; 
  result = (QSlider *)new QSlider(arg1,arg2);
  *(QSlider **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QSlider * New_QSlider3(Qt::Orientation orientation) {
  Qt::Orientation arg1 ;
  QSlider *result = 0 ;
  QSlider * cresult ;
  
  arg1 = (Qt::Orientation)orientation; 
  result = (QSlider *)new QSlider(arg1);
  *(QSlider **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QSlider(QSlider * self) {
  QSlider *arg1 = (QSlider *) 0 ;
  
  arg1 = *(QSlider **)&self; 
  delete arg1;
}


SWIGEXPORT QSize * QSlider_sizeHint(QSlider const * self) {
  QSlider *arg1 = (QSlider *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QSlider **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QSlider const *)arg1)->sizeHint());
  return cresult;
}


SWIGEXPORT QSize * QSlider_minimumSizeHint(QSlider const * self) {
  QSlider *arg1 = (QSlider *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QSlider **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QSlider const *)arg1)->minimumSizeHint());
  return cresult;
}


SWIGEXPORT void QSlider_setTickPosition(QSlider * self, QSlider::TickPosition position) {
  QSlider *arg1 = (QSlider *) 0 ;
  QSlider::TickPosition arg2 ;
  
  arg1 = *(QSlider **)&self; 
  arg2 = (QSlider::TickPosition)position; 
  (arg1)->setTickPosition(arg2);
}


SWIGEXPORT QSlider::TickPosition QSlider_tickPosition(QSlider const * self) {
  QSlider *arg1 = (QSlider *) 0 ;
  QSlider::TickPosition result;
  QSlider::TickPosition cresult ;
  
  arg1 = *(QSlider **)&self; 
  result = (QSlider::TickPosition)((QSlider const *)arg1)->tickPosition();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QSlider_setTickInterval(QSlider * self, int ti) {
  QSlider *arg1 = (QSlider *) 0 ;
  int arg2 ;
  
  arg1 = *(QSlider **)&self; 
  arg2 = (int)ti; 
  (arg1)->setTickInterval(arg2);
}


SWIGEXPORT int QSlider_tickInterval(QSlider const * self) {
  QSlider *arg1 = (QSlider *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QSlider **)&self; 
  result = (int)((QSlider const *)arg1)->tickInterval();
  cresult = result; 
  return cresult;
}


SWIGEXPORT long Modula3_QSliderToQAbstractSlider(long objectRef) {
    long baseptr = 0;
    *(QAbstractSlider **)&baseptr = *(QSlider **)&objectRef;
    return baseptr;
}

#ifdef __cplusplus
}
#endif

