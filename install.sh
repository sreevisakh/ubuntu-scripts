
# Ubuntu  Section #
echo "This is Going to Install:

Browser : Google Chrome
Editors : Sublime Text, Atom
Language: NodeJs, Apache + PHP, Oracle Java, Ruby
Media   : VLC, Qbittorrent, Spotify
Tools   : Git, Essential Build Tools, Git Cola, Zip, Unzip
"
UBUNTU="false"
read -p "Do you Want to Continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    UBUNTU="true"
fi


# Node Section #
NODE="false"
echo "Install Node Packages:
Nodemon, yarn, less, eslint, babel-cli, webpack, grunt, gulp, compass, pm2

"
read -p "would you like to Continue? " -n 1 -r
echo
if [ $REPLY == 'y' ]
then
    NODE="true"
else
    exit
fi



# Execution Section #
if [ $UBUNTU == "true" ]
then
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

  echo "Spotify"
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
  echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

  echo "Updating source List"
  sudo apt-get update

  echo "Accept Java License Agreement"
  echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
  echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

  echo "Installing Apps"
  sudo apt-get -y install google-chrome-stable sublime-text-installer git apache2 nodejs vlc ruby

  sublime-text-installer

  sudo apt-get -y install php gnome-tweak-tool qbittorrent gnome-shell spotify atom git-cola build-essential

  sudo apt-get -y install zip unzip

  sudo apt-get -y purge  openjdk*

  sudo apt-get -y install oracle-java8-installer timeshift
fi

if [ $NODE == "true" ]
then
  sudo npm install -g nodemon yarn less webpack grunt gulp eslint babel-cli pm2

  sudo apt get install ruby

  gem install compass

fi
