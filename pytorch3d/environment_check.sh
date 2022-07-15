#!/bin/bash

conda activate "$1"
python -c "print('\n\n\n################ Checking Packages ################\n\n')"
python -c "import torch; print(f'Torch: {torch.__version__}')"
python -c "import torch; from torch.utils.cpp_extension import CUDA_HOME; print(f'Cuda available: {torch.cuda.is_available()} at {CUDA_HOME}')"
python -c "import torch; print(f'Cuda: {torch.version.cuda}')"
python -c "import torchvision; print(f'Torch Vision: {torchvision.__version__}')"
python -c "import pytorch3d; print(f'PyTorch3D: {pytorch3d.__version__}')"
python -c "from pytorch3d.io import load_obj; print('PyTorch3D: IO works!')"
python -c "from pytorch3d.ops import box3d_overlap; print('PyTorch3D: Ops works!')"
python -c "import detectron2; print(f'Detectron2: {detectron2.__version__}')"
