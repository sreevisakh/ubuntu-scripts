phpstorm &
google-chrome 'http://local.dev.creyate.com' &
google-chrome 'http://qa.creyate.com' &
google-chrome 'http://beta.creyate.com' &
google-chrome 'http://local.dev.creyate.com/phpmyadmin' &
google-chrome 'http://qa.creyate.com/_pma_creyate_db' &
google-chrome 'http://mail.google.com' &
google-chrome 'https://arvindinternet.atlassian.net/issues?filter=11109' &
qbittorrent &
git-cola &

nautilus '/home/sv/creyate-w3/'
sh /home/sv/scripts/updatedb.sh
sh /home/sv/scripts/clearcache.sh

cd ~/creyate-w3/
git stash
git pull origin master
ssh qa@qa.creyate.com



