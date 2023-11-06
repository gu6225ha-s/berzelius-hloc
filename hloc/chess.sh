#!/bin/bash
# To submit the job run "sbatch chess.sh"
# For more details see https://www.nsc.liu.se/support/batch-jobs/introduction/
#SBATCH -J hloc-chess
#SBATCH -t 12:00:00
#SBATCH --mem=2000
#SBATCH -n 1
module load Mambaforge/23.3.1-1
mamba activate hloc
python -m hloc.pipelines.7Scenes.pipeline --scenes chess
