#!/bin/sh -e

VERSION=$2
TAR=../libxalan2-java_$VERSION.orig.tar.xz
DIR=libxalan2-java-$VERSION

mkdir $DIR
tar -xf $3 --strip-components=1 -C $DIR
rm $3
dos2unix $DIR/build.xml
XZ_OPT=--best tar -c -v -J -f $TAR --exclude '*.jar' --exclude '*.class' $DIR
rm -r $DIR
