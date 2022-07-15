#!/bin/sh

DESIRED_CUDA_VERSION=CUSTOM_CUDA_VERSION_TO_BE_REPLACED
export ORIGINAL_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export ORIGINAL_PATH=$PATH
export ORIGINAL_CPATH=$CPATH
export ORIGINAL_CUDA_HOME=$CUDA_HOME
export CUDA_HOME=/usr/local/${DESIRED_CUDA_VERSION}
export LD_LIBRARY_PATH=${CUDA_HOME}/targets/x86_64-linux/lib:${LD_LIBRARY_PATH}
export PATH=${CUDA_HOME}/bin:${CUDA_HOME}/targets/x86_64-linux/lib:${CUDA_HOME}/targets/x86_64-linux/include:${PATH}
export CPATH=${CUDA_HOME}/bin:${CUDA_HOME}/targets/x86_64-linux/lib:${CUDA_HOME}/targets/x86_64-linux/include:${CPATH}
