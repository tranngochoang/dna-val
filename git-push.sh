currentDate=`date`
git add .
git commit -m"$currentDate"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
  echo "Pushing data!!!"
  git push -f git@github.com:tranngochoang/dna-val.git
else
 git status
fi
