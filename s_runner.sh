echo running... 
date
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
git remote add gh git@github.com:wolfhesse/x-ase-shellscript-utility.git
echo fetching gh
git fetch gh 
#--all
git add -A .
git commit -m 'builder commit'
git pull gh master origin
git push gh HEAD:builder
echo finalizer
echo .fin
