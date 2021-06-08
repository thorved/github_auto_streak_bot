cd "$(dirname "$(realpath "$0")")";
echo "The current working directory: $PWD"
git pull.;
echo `date` >> date.txt;
git add .;
git commit -m "`date`" ;
git push;