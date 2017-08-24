X_SCRIPT="${0%%.sh}"
exec 2>&1
# absichtlich: ueberschreiben. diffs in der versionskontrolle
exec 1>"data.d/$X_SCRIPT.res"

#####
##### utility 001
##### batch operations
#####

# precond: exists data.d
# 
echo // $X_SCRIPT @ $(date) >> data.d/.touched
echo // $X_SCRIPT PAT_ANF @ $(date) 

echo === which system
uname -a

echo === listing files
ls -al
echo ---
ls -ax ../.
echo ---
ls -ax /
echo ---

echo // $X_SCRIPT PAT_END @ $(date) >> data.d/.touched
echo // $X_SCRIPT PAT_END @ $(date) 
