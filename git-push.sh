echo "Enter your message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
  echo "Pushing data!!!"
  git push https://github.com/tranngochoang/dna-val.git
else
 git status
fi
