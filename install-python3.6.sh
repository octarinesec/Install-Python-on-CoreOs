#!/bin/bash -uxe

VERSION=3.6.0.3600
PACKAGE=ActivePython-${VERSION}-linux-x86_64-glibc-2.3.6-401834

# make directory
mkdir -p /opt/bin
cd /opt

wget http://downloads.activestate.com/ActivePython/releases/${VERSION}/${PACKAGE}.tar.gz
tar -xzvf ${PACKAGE}.tar.gz

mv ${PACKAGE} apy && cd apy && ./install.sh -I /opt/python/

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/easy_install-3.6 /opt/bin/easy_install-3.6
ln -sf /opt/python/bin/pip3 /opt/bin/pip3
ln -sf /opt/python/bin/pip3.6 /opt/bin/pip3.6
ln -sf /opt/python/bin/python3 /opt/bin/python3
ln -sf /opt/python/bin/python3.6 /opt/bin/python3.6
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv

rm /opt/${PACKAGE}.tar.gz
rm -rf /opt/apy
