currentDate=`date`
git pull https://github.com/tranngochoang/dna-val
git add .
git commit -m"$1 : $currentDate"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
  echo "Pushing data!!!"
  git push -f git@github.com:tranngochoang/dna-val.git
else
 git status
fi
