exec 2>&1
exec 1>>"data.d/${0%%.sh}.res"
##### utility 001
##### batch operations
#####
# precond: exists data.d
# 
echo r-util-001 PAT_ANF @ $(date) >> data.d/.touched

echo listing files
ls -al
echo ---
ls -ax ../.
echo ---
ls -ax /
echo ---

echo r-util-001 PAT_END @ $(date) >> data.d/.touched
