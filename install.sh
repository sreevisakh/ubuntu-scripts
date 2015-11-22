echo "Installing Sublime PPA"
sudo add-apt-repository ppa:webupd8team/sublime-text-3

echo "Installing Chrome PPA"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

echo "Installig Node Source"
curl -sL https://deb.nodesource.com/setup | sudo bash -

echo "Updating source List"
sudo apt-get update

sudo apt-get -y install google-chrome-stable nodejs sublime-text-installer git apache2 php5 gnome-tweak-tool 