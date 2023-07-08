#!/bin/bash


set -e

SCRIPTPATH=$(dirname $(realpath ${BASH_SOURCE[0]}))

 docker run -d --rm \
        -p 8888:8888 \
  			-v ${SCRIPTPATH}/generated/the_annotated_transformer.ipynb:/workspace/generated_annotated_transformer.ipynb \
        --gpus 1 \
        zhaokundev/annotated-transformer

