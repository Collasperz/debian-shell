if [ -d "./sys" ] 
then
./dist/proot -S . /bin/bash
else
echo "###############################"
echo "## Debian ##"
echo "###############################"
echo ":: Installing Debian ::"
sleep 2s
clear
wget -O akuh.zip https://media.githubusercontent.com/media/akuhnet/wqemu/master/akuh.zip
clear
echo "###############################"
echo "## Debian ##"
echo "###############################"
echo ":: Installing Debian ::"
echo ":: Setting up Debian ::"
mkdir debian
mv akuh.zip root.zip root.tar.xz debian/
cd debian
unzip akuh.zip
unzip root.zip
tar -xvf root.tar.xz
rm -rf akuh.zip root.zip root.tar.xz
clear
echo "-: Welcome to Debian! :-"
echo "-: It is highly reccomended you run pkg.sh before Installing anything. :-"
echo "-: You can clean ReplRoot by running clean.sh. :-"
./dist/proot -S . /bin/bash
fi