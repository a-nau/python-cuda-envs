#!/bin/bash

# Configuration
env_name=pytorch3d
custom_cuda_version=cuda-11.1

# Setting up basic conda environment
conda activate base
conda env remove --name ${env_name}
conda create -y -n ${env_name} python=3.9
sh utils/copy_activation_files.sh ${env_name} ${custom_cuda_version}
conda activate ${env_name}
nvcc --version  # show cuda version

# Install packages
# Torch and utils
pip install torch==1.10.0+cu111 torchvision==0.11.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html
conda install -y -c fvcore -c iopath -c conda-forge fvcore iopath
# Demos and examples
conda install -y jupyter
pip install scikit-image==0.18.* matplotlib imageio plotly opencv-python
# Pytorch3D
conda install -y -c bottler nvidiacub
pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"
# Other
pip install trimesh scipy 
conda install -y -c conda-forge meshplot
# Detectron2
python -m pip install detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu111/torch1.10/index.html
# Other 3D Libs
conda install -y -c conda-forge pygalmesh
pip install open3d rtree
pip install protobuf==3.20.*  # downgrade necessary due to Tensorboard error
pip install setuptools==60.*  # see https://github.com/pytorch/pytorch/issues/69894 and https://github.com/facebookresearch/detectron2/issues/3811

# Check if installations succeeded
sh pytorch3d/environment_check.sh ${env_name}
