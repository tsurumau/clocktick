dnl $Id$
dnl config.m4 for extension clocktick

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(clocktick, for clocktick support,
dnl Make sure that the comment is aligned:
dnl [  --with-clocktick             Include clocktick support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(clocktick, whether to enable clocktick support,
Make sure that the comment is aligned:
[  --enable-clocktick           Enable clocktick support])

if test "$PHP_CLOCKTICK" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-clocktick -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/clocktick.h"  # you most likely want to change this
  dnl if test -r $PHP_CLOCKTICK/$SEARCH_FOR; then # path given as parameter
  dnl   CLOCKTICK_DIR=$PHP_CLOCKTICK
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for clocktick files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       CLOCKTICK_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$CLOCKTICK_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the clocktick distribution])
  dnl fi

  dnl # --with-clocktick -> add include path
  dnl PHP_ADD_INCLUDE($CLOCKTICK_DIR/include)

  dnl # --with-clocktick -> check for lib and symbol presence
  dnl LIBNAME=clocktick # you may want to change this
  dnl LIBSYMBOL=clocktick # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $CLOCKTICK_DIR/lib, CLOCKTICK_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_CLOCKTICKLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong clocktick lib version or lib not found])
  dnl ],[
  dnl   -L$CLOCKTICK_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(CLOCKTICK_SHARED_LIBADD)

  PHP_NEW_EXTENSION(clocktick, clocktick.c, $ext_shared)
fi
