#!/bin/bash
# Exit on errors
set -e
# Create virtual environment
mamba create --name hloc python=3.8
mamba activate hloc
# Install hloc (see https://github.com/cvg/Hierarchical-Localization#installation)
git clone --recursive https://github.com/cvg/Hierarchical-Localization/
cd Hierarchical-Localization/
python -m pip install -e .
cd ..
