#!/bin/bash
for scene in chess fire heads office pumpkin redkitchen stairs
do
  cat <<EOT > $scene.sh
#!/bin/bash
#SBATCH --job-name hloc-$scene
#SBATCH --time 12:00:00
#SBATCH --mem 10G
#SBATCH --cpus-per-task 4
#SBATCH --gpus 1
module load Mambaforge/23.3.1-1-hpc1-bdist
mamba activate hloc
python -m hloc.pipelines.7Scenes.pipeline --scenes $scene
EOT
  chmod +x $scene.sh
  echo "Submitting job for scene '$scene'"
  sbatch $scene.sh
done
echo "Run 'squeue -u $USER' to see your jobs"
