#!/bin/bash -ue

VERSION=3.6.0.3600
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.3.6-401834

# make directory
mkdir -p /opt
cd /opt

wget http://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/

rm /opt/${PACKAGE}.tar.gz
rm -rf /opt/apy
