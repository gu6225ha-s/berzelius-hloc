### SSH to Berzelius
```
ssh username@berzelius1.nsc.liu.se
```
### Go to your project directory
```
cd /proj/<your_project_dir>/users/$USER
```
### Checkout this repository
```
git clone https://github.com/gu6225ha-s/Berzelius.git
```
### Go to the hloc directory
```
cd Berzelius/hloc/
```
### Create a virtual environment with hloc
```
./setup.sh
```
### Download the 7-Scenes dataset
```
./7scenes_install.sh
```
### Submit batch jobs
```
./submit_jobs.sh
```
