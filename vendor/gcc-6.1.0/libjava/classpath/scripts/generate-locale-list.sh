#!/bin/sh

CLASSPATH_SRCDIR=`dirname $0`/..

echo "/* LocaleData.java --"
echo "   Copyright (C) 2004, 2005  Free Software Foundation, Inc."
echo
echo "This file is part of GNU Classpath."
echo
echo "GNU Classpath is free software; you can redistribute it and/or modify"
echo "it under the terms of the GNU General Public License as published by"
echo "the Free Software Foundation; either version 2, or (at your option)"
echo "any later version."
echo
echo "GNU Classpath is distributed in the hope that it will be useful, but"
echo "WITHOUT ANY WARRANTY; without even the implied warranty of"
echo "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU"
echo "General Public License for more details."
echo
echo "You should have received a copy of the GNU General Public License"
echo "along with GNU Classpath; see the file COPYING.  If not, write to the"
echo "Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA"
echo "02110-1301 USA."
echo
echo "Linking this library statically or dynamically with other modules is"
echo "making a combined work based on this library.  Thus, the terms and"
echo "conditions of the GNU General Public License cover the whole"
echo "combination."
echo
echo "As a special exception, the copyright holders of this library give you"
echo "permission to link this library with independent modules to produce an"
echo "executable, regardless of the license terms of these independent"
echo "modules, and to copy and distribute the resulting executable under"
echo "terms of your choice, provided that you also meet, for each linked"
echo "independent module, the terms and conditions of the license of that"
echo "module.  An independent module is a module which is not derived from"
echo "or based on this library.  If you modify this library, you may extend"
echo "this exception to your version of the library, but you are not"
echo "obligated to do so.  If you do not wish to do so, delete this"
echo "exception statement from your version. */"
echo
echo
echo "package gnu.java.locale;"
echo
echo "// This file was automatically generated by scripts/generate-locale-list.sh"
echo
echo
echo "class LocaleData"
echo "{"
echo "  public static final String[] localeNames ="
echo "    {"

( cd $CLASSPATH_SRCDIR/resource/gnu/java/locale ; ls LocaleInformation_*.properties ) | xargs -n 1 echo | sed -e 's/LocaleInformation_\(.*\)\.properties/\1/' |
while read locale ; do echo "      \"$locale\"," ; done

echo "    };"

echo
echo "  public static final String[] collatorLocaleNames ="
echo "    {"

( cd $CLASSPATH_SRCDIR/resource/gnu/java/locale; grep -l collation_rules LocaleInformation_*.properties) |
 xargs -n 1 echo | sed -e 's/LocaleInformation_\(.*\)\.properties/\1/' |
 sed -e '/^$/ d' |
 while read locale ; do echo "      \"$locale\"," ; done

echo "    };"

echo "}"