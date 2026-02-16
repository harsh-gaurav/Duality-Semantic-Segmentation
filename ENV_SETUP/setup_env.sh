#!/bin/bash

echo "Creating conda environment..."
conda create -n EDU python=3.8 -y

echo "Activating environment..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate EDU

echo "Installing packages..."
pip install numpy opencv-python matplotlib pillow tqdm scikit-learn torch torchvision

echo "Environment setup complete."


