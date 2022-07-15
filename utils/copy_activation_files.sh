#!/bin/bash

LOCAL_CONDA_ENV_PATH=~/anaconda3/envs
mkdir -p ${LOCAL_CONDA_ENV_PATH}/"$1"/etc/conda/activate.d
mkdir -p ${LOCAL_CONDA_ENV_PATH}/"$1"/etc/conda/deactivate.d
cp utils/activate.sh ${LOCAL_CONDA_ENV_PATH}/"$1"/etc/conda/activate.d/
sed -i "s/CUSTOM_CUDA_VERSION_TO_BE_REPLACED/$2/" ${LOCAL_CONDA_ENV_PATH}/"$1"/etc/conda/activate.d/activate.sh
cp utils/deactivate.sh ${LOCAL_CONDA_ENV_PATH}/"$1"/etc/conda/deactivate.d/