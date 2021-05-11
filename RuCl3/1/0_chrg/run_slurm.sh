#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH --partition=g2
##
#SBATCH --job-name="PdRuBr3_chrg"
#SBATCH --time=7-12:30          # Runtime limit: Day-HH:MM
#SBATCH -o STDOUT.%N.%j.out         # STDOUT, %N : nodename, %j : JobID
#SBATCH -e STDERR.%N.%j.err         # STDERR, %N : nodename, %j : JobID


## HPC ENVIRONMENT DON'T REMOVE THIS PART
. /etc/profile.d/TMI.sh
##

mpiexec.hydra -genv I_MPI_DEBUG 5 -np $SLURM_NTASKS  /TGM/Apps/VASP/bin/5.3.5/NORMAL/vasp.5.3.5_31MAR2014_GRP7_NORMAL_VTST.x
