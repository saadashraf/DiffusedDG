#!/bin/bash
#SBATCH -J diff-dg
#SBATCH -t 24:00:00
#SBATCH -n 1
#SBATCH --mem=50G
#SBATCH --partition=gpu-v100 --gres=gpu:1
#SBATCH --output=%j.out

source ~/miniconda3/etc/profile.d/conda.sh && \
conda activate diff-dg && \
python diffused_dg.py