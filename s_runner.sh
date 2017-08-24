echo running... 
TS=$(date +"y%Y.%y%m%d.%H%M%S.%s")
echo $TS
cp s_runner.sh saved_runner.$TS
date
git remote add gh git@github.com:wolfhesse/x-ase-shellscript-utility.git
echo pulling gh
git pull gh master 
echo pwd is $PWD
echo psd-command $(pwd)
echo touch file running in run.d
echo touched >> ./run.d/.touched
date >> ./run.d/.touched
echo listing files
ls -al
echo ---
ls -ax ../.
echo ---
ls -ax /
echo ---
echo try: commit to github
git add -A .
git commit -m 'builder commit'
git push gh HEAD:builder
echo finalizer
echo .fin

