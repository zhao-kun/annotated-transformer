#!/bin/bash


set -e

SCRIPTPATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

 docker run -d --rm \
        -p 8888:8888 \
        --gpus 1 \
        annotated-transformer

