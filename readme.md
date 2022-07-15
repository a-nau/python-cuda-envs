# Python Environments for Deep Learning

Having specific (and varying) CUDA version for your Python environments can be tricky.
Conda allows you to do just that and this install script automatizes the process for you.
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


**Note**: 
This script assumes that your CUDA versions are installed into `/usr/local/`, if that is not the case, you have to adjust this [here](utils/activate.sh#L8).
The final CUDA path that is linked is then `/user/local/{custom_cuda_version}`
