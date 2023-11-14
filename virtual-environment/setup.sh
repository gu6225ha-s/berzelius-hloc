#!/bin/bash
# Create virtual environment (see https://www.nsc.liu.se/support/systems/berzelius-software/berzelius-pytorch/#installing-pytorch-via-pip)
module load Mambaforge/23.3.1-1
mamba create --name hloc python=3.8
mamba activate hloc
# Install hloc (see https://github.com/cvg/Hierarchical-Localization#installation)
git clone --recursive https://github.com/cvg/Hierarchical-Localization/
cd Hierarchical-Localization/
python -m pip install -e .
