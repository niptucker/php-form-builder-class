#!/bin/bash

# root directory for web available filed
WWW_ROOT=../../../www

# source web available scripts directory
PFBC_SOURCE=PFBC
# target web available scripts directory
PFBC_TARGET=$WWW_ROOT/PFBC

if [ ! -e $WWW_ROOT ]; then
    mkdir $WWW_ROOT
fi

if [ ! -e $WWW_ROOT ]; then
    echo "WWW_ROOT directory ($WWW_ROOT) does not exist and cannot be created! Stopping..."
    return
fi

if [ -e $PFBC_SOURCE ]; then
    ln -r -s -T $PFBC_SOURCE $PFBC_TARGET

    echo "Created symlinks for PFBC ($WWW_TARGET)"
fi
