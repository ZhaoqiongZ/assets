# Install PyTorch and IPEX
pip install torch intel-extension-for-pytorch

# LLaMA dependencies
# Used for accuracy test only
git clone https://github.com/EleutherAI/lm-evaluation-harness
cd lm-evaluation-harness
pip install -e .
cd ..

# Install transformers
pip install transformers==4.31.0
# Install others deps for LLMs
pip install cpuid accelerate datasets sentencepiece protobuf==3.20.3

# Stable Diffusion dependencies
pip install diffusers

# Build tcmalloc
wget https://github.com/gperftools/gperftools/releases/download/gperftools-2.7.90/gperftools-2.7.90.tar.gz
tar -xzf gperftools-2.7.90.tar.gz 
cd gperftools-2.7.90
./configure --prefix=$CONDA_PREFIX
make
make install
cd ..

# Intel OpenMP
conda install -c intel intel-openmp

# Install deps for stable diffusion
pip install scipy torchmetrics, torch-fidelity pycocotools

# Install gradio
pip install gradio==3.41.0

# Setup environment variables for performance on Xeon
. set_env_vars.sh