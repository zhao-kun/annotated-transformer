#!/bin/bash

SCRIPTPATH=$(dirname $(realpath ${BASH_SOURCE[0]}))


docker build -f ${SCRIPTPATH}/rootfs/Dockerfile -t zhaokundev/annotated-transformer ${SCRIPTPATH}

