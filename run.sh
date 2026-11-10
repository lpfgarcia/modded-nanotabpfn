#!/bin/bash

#SBATCH -J nanotabpfn         # Job name
#SBATCH -o job.%j.out         # Name of stdout output file (%j expands to jobId)
#SBATCH -N 1                  # Total number of nodes requested
#SBATCH -n 1                  # Total number of mpi tasks requested
#SBATCH -t 1:00:00            # Run time (hh:mm:ss) - 1.5 hours
#SBATCH -p mi2101x            # Desired partition

module load rocm/7.2.0
source bin/activate
uv run python train_nano.py
