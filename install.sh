sudo apt-get -y install curl
echo "Adding PPAs"

echo "Sublime"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

echo "Chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

echo "Node"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

echo "Oracle Java 8"
sudo add-apt-repository -y ppa:webupd8team/java

echo "TimeShift"
sudo apt-add-repository -y ppa:teejee2008/ppa

echo "Slack"
sudo apt-add-repository -y ppa:rael-gc/scudcloud

echo "Spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

echo "Atom"
sudo add-apt-repository -y ppa:webupd8team/atom 

echo "Updating source List"
sudo apt-get update


echo "Installing Apps"
sudo apt-get -y install google-chrome-stable sublime-text-installer git apache2 nodejs vlc

sublime-text-installer

sudo apt-get -y install php gnome-tweak-tool qbittorrent gnome-shell spotify atom git-cola build-essential 

sudo apt-get -y install zip unzip 

sudo apt-get -y purge  openjdk*

sudo apt-get -y install oracle-java8-installer timeshift php-curl


