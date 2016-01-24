mkdir $HOME/ben10/
cd $HOME/ben10
git clone https://github.com/phacility/libphutil.git
git clone https://github.com/phacility/arcanist.git
touch $HOME/.profile
echo "export PATH=\$PATH:\$HOME/ben10/arcanist/bin/" >> $HOME/.profile


