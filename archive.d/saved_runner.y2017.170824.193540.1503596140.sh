echo running... 
DS=$(date +"y%Y.%y%m%d.%H%M%S")
echo $DS
TS=$(date +"%s")
echo $TS
#
cp s_runner.sh ./archive.d/saved_runner.$DS.$TS.sh
git remote add gh git@github.com:wolfhesse/x-ase-shellscript-utility.git
echo pulling gh
git pull gh builder
#
echo pwd is $PWD
echo psd-command $(pwd)
echo touched > ./run.d/.touched
date >> ./run.d/.touched
echo $DS $TS > ./run.d/.system
uname -a >> ./run.d/.system
echo running utilities
echo ___ run x_util_001
sh x_util_001.sh
#
echo try: commit to github
git add -A .
git commit -m "builder commit $DS $TS"
git push gh HEAD:builder
echo finalizer
echo .fin

