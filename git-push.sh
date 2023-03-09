echo "Enter your message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
else
 git status
 echo "Pushing data!!!"
 push https: //github.com/tranngochoang/dna-val.git
fi
