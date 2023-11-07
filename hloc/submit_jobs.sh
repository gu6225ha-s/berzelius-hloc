#!/bin/bash
for scene in chess fire heads office pumpkin redkitchen stairs
do
  cat <<EOT > $scene.sh
#!/bin/bash
#SBATCH -J hloc-$scene
#SBATCH -t 12:00:00
#SBATCH --mem=10000
#SBATCH -c 2
module load Mambaforge/23.3.1-1-hpc1-bdist
mamba activate hloc
python -m hloc.pipelines.7Scenes.pipeline --scenes chess
EOT
  chmod +x $scene.sh
  echo "Submitting job for scene '$scene'"
  sbatch $scene.sh
done
echo "Run 'squeue -u $USER' to see your jobs"
