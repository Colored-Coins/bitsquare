#!/bin/bash

cd ../../
mkdir -p gui/deploy

set -e

# Edit version
version=0.4.9.5.1-colored

jarFile="gui/target/shaded.jar"
jdkfixFile="jdkfix/target/jdkfix-0.4.9.5.jar"

# Note: fakeroot needs to be installed on linux
$JAVA_HOME/bin/javapackager \
    -deploy \
    -BjvmOptions=-Xbootclasspath/a:"jdkfix-$version.jar":"../runtime/lib/ext/jfxrt.jar" \
    -Bruntime="$JAVA_HOME/jre" \
    -BappVersion=$version \
    -Bcategory=Internet \
    -Bemail=7r0ggy@gmail.com \
    -BlicenseType=GPLv3 \
    -BlicenseFile=LICENSE \
    -Bicon=package/linux/icon.png \
    -native deb \
    -name Bitsquare \
    -title Bitsquare \
    -vendor Bitsquare \
    -outdir gui/deploy \
    -srcfiles $jarFile:$jdkfixFile \
    -srcfiles package/linux/LICENSE \
    -appclass io.bitsquare.app.BitsquareAppMain \
    -outfile Bitsquare

# sudo alien -r -c -k gui/deploy/bundles/bitsquare-$version.deb

mv "gui/deploy/bundles/bitsquare-$version.deb" "dist/Bitsquare-32bit-$version.deb"
# mv "bitsquare-$version-1.i386.rpm" "/media/sf_vm_shared_ubuntu14_32bit/Bitsquare-32bit-$version.rpm"
rm -r gui/deploy/

cd package/linux