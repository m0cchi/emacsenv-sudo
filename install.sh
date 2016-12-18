#!/usr/bin/env bash
which emacsenv

if [ ! $? -eq 0 ]; then
    exit 1
fi

eval $(emacsenv env)

cp $(cd $(dirname $0); pwd)/plugins/*.sh $EMACSENV_HOME/plugins
