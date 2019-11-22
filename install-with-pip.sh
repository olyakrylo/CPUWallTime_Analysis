#!/bin/sh

#echo "Usage : ./install-with-pip.sh"
echo "$(uname)"
if [ "$(uname)" == "Linux" ]; then

    sudo apt install python3-pip

else
    sudo easy_install pip
fi

echo 'PyYAML' > requirements.txt
echo 'argparse' > requirements.txt
echo 'scipy' > requirements.txt
echo 'cycler' > requirements.txt
echo 'matplotlib' > requirements.txt
echo 'kiwisolver' > requirements.txt
echo 'numpy' > requirements.txt
echo 'pyparsing' > requirements.txt
echo 'python-dateutil' > requirements.txt
echo 'pytz' > requirements.txt
echo 'pandas' > requirements.txt
echo 'setuptools' > requirements.txt
echo 'six' > requirements.txt
echo 'sklearn' > requirements.txt

for req in $(cat requirements.txt)
do sudo pip3 install $req 
done

