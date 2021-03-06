/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.10
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
#if defined(__GNUC__)
#  if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#    ifndef GCC_HASCLASSVISIBILITY
#      define GCC_HASCLASSVISIBILITY
#    endif
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

/* Deal with Apple's deprecated 'AssertMacros.h' from Carbon-framework */
#if defined(__APPLE__) && !defined(__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES)
# define __ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES 0
#endif

/* Intel's compiler complains if a variable which was never initialised is
 * cast to void, which is a common idiom which we use to indicate that we
 * are aware a variable isn't used.  So we just silence that warning.
 * See: https://github.com/swig/swig/issues/192 for more discussion.
 */
#ifdef __INTEL_COMPILER
# pragma warning disable 592
#endif



#include <stdlib.h>
#include <string.h>
#include <stdio.h>


#include <QtGui/qcombobox.h>


#ifdef __cplusplus
extern "C" {
#endif

SWIGEXPORT QComboBox * New_QComboBox0(QWidget * parent) {
  QWidget *arg1 = (QWidget *) 0 ;
  QComboBox *result = 0 ;
  QComboBox * cresult ;
  
  arg1 = *(QWidget **)&parent; 
  result = (QComboBox *)new QComboBox(arg1);
  *(QComboBox **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QComboBox * New_QComboBox1() {
  QComboBox *result = 0 ;
  QComboBox * cresult ;
  
  result = (QComboBox *)new QComboBox();
  *(QComboBox **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void Delete_QComboBox(QComboBox * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  delete arg1;
}


SWIGEXPORT int QComboBox_maxVisibleItems(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->maxVisibleItems();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setMaxVisibleItems(QComboBox * self, int maxItems) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)maxItems; 
  (arg1)->setMaxVisibleItems(arg2);
}


SWIGEXPORT int QComboBox_count(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->count();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setMaxCount(QComboBox * self, int max) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)max; 
  (arg1)->setMaxCount(arg2);
}


SWIGEXPORT int QComboBox_maxCount(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->maxCount();
  cresult = result; 
  return cresult;
}


SWIGEXPORT bool QComboBox_autoCompletion(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (bool)((QComboBox const *)arg1)->autoCompletion();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setAutoCompletion(QComboBox * self, bool enable) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = enable ? true : false; 
  (arg1)->setAutoCompletion(arg2);
}


SWIGEXPORT Qt::CaseSensitivity QComboBox_autoCompletionCaseSensitivity(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  Qt::CaseSensitivity result;
  Qt::CaseSensitivity cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (Qt::CaseSensitivity)((QComboBox const *)arg1)->autoCompletionCaseSensitivity();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setAutoCompletionCaseSensitivity(QComboBox * self, Qt::CaseSensitivity sensitivity) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  Qt::CaseSensitivity arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (Qt::CaseSensitivity)sensitivity; 
  (arg1)->setAutoCompletionCaseSensitivity(arg2);
}


SWIGEXPORT bool QComboBox_duplicatesEnabled(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (bool)((QComboBox const *)arg1)->duplicatesEnabled();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setDuplicatesEnabled(QComboBox * self, bool enable) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = enable ? true : false; 
  (arg1)->setDuplicatesEnabled(arg2);
}


SWIGEXPORT void QComboBox_setFrame(QComboBox * self, bool m3arg2) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = m3arg2 ? true : false; 
  (arg1)->setFrame(arg2);
}


SWIGEXPORT bool QComboBox_hasFrame(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (bool)((QComboBox const *)arg1)->hasFrame();
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QComboBox_findText(QComboBox const * self, QString * text, int flags) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString *arg2 = 0 ;
  Qt::MatchFlags arg3 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QString **)&text;
  arg3 = (Qt::MatchFlags)flags; 
  result = (int)((QComboBox const *)arg1)->findText((QString const &)*arg2,arg3);
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QComboBox_findText1(QComboBox const * self, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString *arg2 = 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QString **)&text;
  result = (int)((QComboBox const *)arg1)->findText((QString const &)*arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QComboBox_findData(QComboBox const * self, QVariant * data, int role, int flags) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QVariant *arg2 = 0 ;
  int arg3 ;
  Qt::MatchFlags arg4 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QVariant **)&data;
  arg3 = (int)role; 
  arg4 = (Qt::MatchFlags)flags; 
  result = (int)((QComboBox const *)arg1)->findData((QVariant const &)*arg2,arg3,arg4);
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QComboBox_findData1(QComboBox const * self, QVariant * data, int role) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QVariant *arg2 = 0 ;
  int arg3 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QVariant **)&data;
  arg3 = (int)role; 
  result = (int)((QComboBox const *)arg1)->findData((QVariant const &)*arg2,arg3);
  cresult = result; 
  return cresult;
}


SWIGEXPORT int QComboBox_findData2(QComboBox const * self, QVariant * data) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QVariant *arg2 = 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QVariant **)&data;
  result = (int)((QComboBox const *)arg1)->findData((QVariant const &)*arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT QComboBox::InsertPolicy QComboBox_insertPolicy(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QComboBox::InsertPolicy result;
  QComboBox::InsertPolicy cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QComboBox::InsertPolicy)((QComboBox const *)arg1)->insertPolicy();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setInsertPolicy(QComboBox * self, QComboBox::InsertPolicy policy) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QComboBox::InsertPolicy arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (QComboBox::InsertPolicy)policy; 
  (arg1)->setInsertPolicy(arg2);
}


SWIGEXPORT QComboBox::SizeAdjustPolicy QComboBox_sizeAdjustPolicy(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QComboBox::SizeAdjustPolicy result;
  QComboBox::SizeAdjustPolicy cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QComboBox::SizeAdjustPolicy)((QComboBox const *)arg1)->sizeAdjustPolicy();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setSizeAdjustPolicy(QComboBox * self, QComboBox::SizeAdjustPolicy policy) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QComboBox::SizeAdjustPolicy arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (QComboBox::SizeAdjustPolicy)policy; 
  (arg1)->setSizeAdjustPolicy(arg2);
}


SWIGEXPORT int QComboBox_minimumContentsLength(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->minimumContentsLength();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setMinimumContentsLength(QComboBox * self, int characters) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)characters; 
  (arg1)->setMinimumContentsLength(arg2);
}


SWIGEXPORT QSize * QComboBox_iconSize(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QComboBox const *)arg1)->iconSize());
  return cresult;
}


SWIGEXPORT void QComboBox_setIconSize(QComboBox * self, QSize * size) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QSize *arg2 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QSize **)&size;
  (arg1)->setIconSize((QSize const &)*arg2);
}


SWIGEXPORT bool QComboBox_isEditable(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (bool)((QComboBox const *)arg1)->isEditable();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setEditable(QComboBox * self, bool editable) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  bool arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = editable ? true : false; 
  (arg1)->setEditable(arg2);
}


SWIGEXPORT void QComboBox_setLineEdit(QComboBox * self, QLineEdit * edit) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QLineEdit *arg2 = (QLineEdit *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QLineEdit **)&edit; 
  (arg1)->setLineEdit(arg2);
}


SWIGEXPORT QLineEdit * QComboBox_lineEdit(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QLineEdit *result = 0 ;
  QLineEdit * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QLineEdit *)((QComboBox const *)arg1)->lineEdit();
  *(QLineEdit **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setValidator(QComboBox * self, QValidator * v) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QValidator *arg2 = (QValidator *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QValidator **)&v; 
  (arg1)->setValidator((QValidator const *)arg2);
}


SWIGEXPORT QValidator * QComboBox_validator(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QValidator *result = 0 ;
  QValidator * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QValidator *)((QComboBox const *)arg1)->validator();
  *(QValidator **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setCompleter(QComboBox * self, QCompleter * c) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QCompleter *arg2 = (QCompleter *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QCompleter **)&c; 
  (arg1)->setCompleter(arg2);
}


SWIGEXPORT QCompleter * QComboBox_completer(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QCompleter *result = 0 ;
  QCompleter * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QCompleter *)((QComboBox const *)arg1)->completer();
  *(QCompleter **)&cresult = result; 
  return cresult;
}


SWIGEXPORT QAbstractItemDelegate * QComboBox_itemDelegate(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemDelegate *result = 0 ;
  QAbstractItemDelegate * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QAbstractItemDelegate *)((QComboBox const *)arg1)->itemDelegate();
  *(QAbstractItemDelegate **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setItemDelegate(QComboBox * self, QAbstractItemDelegate * delegate) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemDelegate *arg2 = (QAbstractItemDelegate *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QAbstractItemDelegate **)&delegate; 
  (arg1)->setItemDelegate(arg2);
}


SWIGEXPORT QAbstractItemModel * QComboBox_model(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemModel *result = 0 ;
  QAbstractItemModel * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QAbstractItemModel *)((QComboBox const *)arg1)->model();
  *(QAbstractItemModel **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setModel(QComboBox * self, QAbstractItemModel * model) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemModel *arg2 = (QAbstractItemModel *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QAbstractItemModel **)&model; 
  (arg1)->setModel(arg2);
}


SWIGEXPORT QModelIndex * QComboBox_rootModelIndex(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QModelIndex * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  *(QModelIndex **)&cresult = new QModelIndex((const QModelIndex &)((QComboBox const *)arg1)->rootModelIndex());
  return cresult;
}


SWIGEXPORT void QComboBox_setRootModelIndex(QComboBox * self, QModelIndex * index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QModelIndex *arg2 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QModelIndex **)&index;
  (arg1)->setRootModelIndex((QModelIndex const &)*arg2);
}


SWIGEXPORT int QComboBox_modelColumn(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->modelColumn();
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setModelColumn(QComboBox * self, int visibleColumn) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)visibleColumn; 
  (arg1)->setModelColumn(arg2);
}


SWIGEXPORT int QComboBox_currentIndex(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int result;
  int cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (int)((QComboBox const *)arg1)->currentIndex();
  cresult = result; 
  return cresult;
}


SWIGEXPORT QString * QComboBox_currentText(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  *(QString **)&cresult = new QString((const QString &)((QComboBox const *)arg1)->currentText());
  return cresult;
}


SWIGEXPORT QString * QComboBox_itemText(QComboBox const * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QString * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  *(QString **)&cresult = new QString((const QString &)((QComboBox const *)arg1)->itemText(arg2));
  return cresult;
}


SWIGEXPORT QIcon * QComboBox_itemIcon(QComboBox const * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QIcon * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  *(QIcon **)&cresult = new QIcon((const QIcon &)((QComboBox const *)arg1)->itemIcon(arg2));
  return cresult;
}


SWIGEXPORT QVariant * QComboBox_itemData(QComboBox const * self, int index, int role) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  int arg3 ;
  QVariant * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = (int)role; 
  *(QVariant **)&cresult = new QVariant((const QVariant &)((QComboBox const *)arg1)->itemData(arg2,arg3));
  return cresult;
}


SWIGEXPORT QVariant * QComboBox_itemData1(QComboBox const * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QVariant * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  *(QVariant **)&cresult = new QVariant((const QVariant &)((QComboBox const *)arg1)->itemData(arg2));
  return cresult;
}


SWIGEXPORT void QComboBox_addItem(QComboBox * self, QString * text, QVariant * userData) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString *arg2 = 0 ;
  QVariant *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QString **)&text;
  arg3 = *(QVariant **)&userData;
  (arg1)->addItem((QString const &)*arg2,(QVariant const &)*arg3);
}


SWIGEXPORT void QComboBox_addItem1(QComboBox * self, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QString **)&text;
  (arg1)->addItem((QString const &)*arg2);
}


SWIGEXPORT void QComboBox_addItem2(QComboBox * self, QIcon * icon, QString * text, QVariant * userData) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QIcon *arg2 = 0 ;
  QString *arg3 = 0 ;
  QVariant *arg4 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QIcon **)&icon;
  arg3 = *(QString **)&text;
  arg4 = *(QVariant **)&userData;
  (arg1)->addItem((QIcon const &)*arg2,(QString const &)*arg3,(QVariant const &)*arg4);
}


SWIGEXPORT void QComboBox_addItem3(QComboBox * self, QIcon * icon, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QIcon *arg2 = 0 ;
  QString *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QIcon **)&icon;
  arg3 = *(QString **)&text;
  (arg1)->addItem((QIcon const &)*arg2,(QString const &)*arg3);
}


SWIGEXPORT void QComboBox_addItems(QComboBox * self, QStringList * texts) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QStringList *arg2 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QStringList **)&texts;
  (arg1)->addItems((QStringList const &)*arg2);
}


SWIGEXPORT void QComboBox_insertItem(QComboBox * self, int index, QString * text, QVariant * userData) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QString *arg3 = 0 ;
  QVariant *arg4 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QString **)&text;
  arg4 = *(QVariant **)&userData;
  (arg1)->insertItem(arg2,(QString const &)*arg3,(QVariant const &)*arg4);
}


SWIGEXPORT void QComboBox_insertItem1(QComboBox * self, int index, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QString *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QString **)&text;
  (arg1)->insertItem(arg2,(QString const &)*arg3);
}


SWIGEXPORT void QComboBox_insertItem2(QComboBox * self, int index, QIcon * icon, QString * text, QVariant * userData) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QIcon *arg3 = 0 ;
  QString *arg4 = 0 ;
  QVariant *arg5 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QIcon **)&icon;
  arg4 = *(QString **)&text;
  arg5 = *(QVariant **)&userData;
  (arg1)->insertItem(arg2,(QIcon const &)*arg3,(QString const &)*arg4,(QVariant const &)*arg5);
}


SWIGEXPORT void QComboBox_insertItem3(QComboBox * self, int index, QIcon * icon, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QIcon *arg3 = 0 ;
  QString *arg4 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QIcon **)&icon;
  arg4 = *(QString **)&text;
  (arg1)->insertItem(arg2,(QIcon const &)*arg3,(QString const &)*arg4);
}


SWIGEXPORT void QComboBox_insertItems(QComboBox * self, int index, QStringList * texts) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QStringList *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QStringList **)&texts;
  (arg1)->insertItems(arg2,(QStringList const &)*arg3);
}


SWIGEXPORT void QComboBox_insertSeparator(QComboBox * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  (arg1)->insertSeparator(arg2);
}


SWIGEXPORT void QComboBox_removeItem(QComboBox * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  (arg1)->removeItem(arg2);
}


SWIGEXPORT void QComboBox_setItemText(QComboBox * self, int index, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QString *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QString **)&text;
  (arg1)->setItemText(arg2,(QString const &)*arg3);
}


SWIGEXPORT void QComboBox_setItemIcon(QComboBox * self, int index, QIcon * icon) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QIcon *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QIcon **)&icon;
  (arg1)->setItemIcon(arg2,(QIcon const &)*arg3);
}


SWIGEXPORT void QComboBox_setItemData(QComboBox * self, int index, QVariant * value, int role) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QVariant *arg3 = 0 ;
  int arg4 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QVariant **)&value;
  arg4 = (int)role; 
  (arg1)->setItemData(arg2,(QVariant const &)*arg3,arg4);
}


SWIGEXPORT void QComboBox_setItemData1(QComboBox * self, int index, QVariant * value) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  QVariant *arg3 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  arg3 = *(QVariant **)&value;
  (arg1)->setItemData(arg2,(QVariant const &)*arg3);
}


SWIGEXPORT QAbstractItemView * QComboBox_view(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemView *result = 0 ;
  QAbstractItemView * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  result = (QAbstractItemView *)((QComboBox const *)arg1)->view();
  *(QAbstractItemView **)&cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_setView(QComboBox * self, QAbstractItemView * itemView) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QAbstractItemView *arg2 = (QAbstractItemView *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QAbstractItemView **)&itemView; 
  (arg1)->setView(arg2);
}


SWIGEXPORT QSize * QComboBox_sizeHint(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QComboBox const *)arg1)->sizeHint());
  return cresult;
}


SWIGEXPORT QSize * QComboBox_minimumSizeHint(QComboBox const * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QSize * cresult ;
  
  arg1 = *(QComboBox **)&self; 
  *(QSize **)&cresult = new QSize((const QSize &)((QComboBox const *)arg1)->minimumSizeHint());
  return cresult;
}


SWIGEXPORT void QComboBox_showPopup(QComboBox * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  (arg1)->showPopup();
}


SWIGEXPORT void QComboBox_hidePopup(QComboBox * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  (arg1)->hidePopup();
}


SWIGEXPORT bool QComboBox_event(QComboBox * self, QEvent * event) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QEvent *arg2 = (QEvent *) 0 ;
  bool result;
  bool cresult ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QEvent **)&event; 
  result = (bool)(arg1)->event(arg2);
  cresult = result; 
  return cresult;
}


SWIGEXPORT void QComboBox_clear(QComboBox * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  (arg1)->clear();
}


SWIGEXPORT void QComboBox_clearEditText(QComboBox * self) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  
  arg1 = *(QComboBox **)&self; 
  (arg1)->clearEditText();
}


SWIGEXPORT void QComboBox_setEditText(QComboBox * self, QString * text) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  QString *arg2 = 0 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = *(QString **)&text;
  (arg1)->setEditText((QString const &)*arg2);
}


SWIGEXPORT void QComboBox_setCurrentIndex(QComboBox * self, int index) {
  QComboBox *arg1 = (QComboBox *) 0 ;
  int arg2 ;
  
  arg1 = *(QComboBox **)&self; 
  arg2 = (int)index; 
  (arg1)->setCurrentIndex(arg2);
}


#ifdef __cplusplus
}
#endif

