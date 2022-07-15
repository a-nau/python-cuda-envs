# Python Environments for Deep Learning

Having specific (and varying) CUDA version for your Python environments can be tricky.
Conda allows you to do just that and this install script automatizes the process for you.

We exemplarily show how to use the script with CUDA 11.1 and install [PyTorch](https://github.com/pytorch/pytorch), [PyTorch3D](https://github.com/facebookresearch/pytorch3d) and [Detectron2](https://github.com/facebookresearch/detectron2).

## Usage

Install environment from the root directory using

```shell
source pytorch3d/install_environment.sh
```

You can configure the following easily

- name of the conda environment
- CUDA version you want to use
- Python version

in the [install_environment.sh](pytorch3d/install_environment.sh)

```shell
#!/bin/bash

# Configuration
env_name=pytorch3d                         # set environment name here
custom_cuda_version=cuda-11.1              # set CUDA version here

# Setting up basic conda environment
conda activate base
conda env remove --name ${env_name}
conda create -y -n ${env_name} python=3.9  # set Python version here
[...]
```

After install perform an [automated check](pytorch3d/environment_check.sh) if all crucial libraries are imported correctly.

**Note**
- The default CUDA installation path is `/usr/local/`, you can change it [here](utils/activate.sh#L8) (Line 8). Tthe final CUDA path that is linked is then `/user/local/{custom_cuda_version}`.
- The default conda path is `~/anaconda3/envs`, you can change it [here](utils/copy_activation_files.sh#L3) (Line 3).

