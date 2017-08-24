echo running... 
date
echo pwd is $PWD
echo psd-command $(pwd)
echo touch file running in run.d
echo touched >> .touched
date >> .touched
echo listing files
ls -al
echo ---
ls -al ./ssh
echo ---
ls -al /
echo ---
echo finalizer
echo .fin
