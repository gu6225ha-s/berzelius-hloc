# Apptainer
Go to the apptainer directory
```
cd berzelius-hloc/apptainer/
```

Build the apptainer image
```
apptainer build --fakeroot hloc.sif hloc.def
```

Download the 7-Scenes dataset
```
../7scenes_install.sh
```

Submit batch jobs
```
./submit_jobs.sh
```
