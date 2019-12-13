#!/bin/bash
#SBATCH -J Sace
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -gres=gpu:1
module load anaconda3/2019.07
conda activate 3dunet
python -u train.py --config resources/train_config_ce.yaml


