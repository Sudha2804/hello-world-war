ls
if [ -d hello-world-war ]
then
rm -rf *
fi
git clone https://github.com/Sudha2804/hello-world-war.git
cd hello-world-war
mvn clean package
ls
ls
echo "$1 $2"
