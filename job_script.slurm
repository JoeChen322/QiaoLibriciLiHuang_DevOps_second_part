#!/bin/bash
#SBATCH --job-name=grayscale
#SBATCH --output=output_%j.txt
#SBATCH --error=error_%j.txt
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=00:05:00
#SBATCH --partition=debug

module load singularity

# 从 registry 拉取镜像
singularity pull grayscale.sif library://qiao/qiao/grayscale:latest

# 运行容器
singularity exec grayscale.sif ./run_grayscale_app.sh
