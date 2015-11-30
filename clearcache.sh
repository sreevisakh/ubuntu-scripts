echo "Removing JS"
rm -rf  /var/cache/ail/creyate-w3/js/*
echo "Removing CSS"
rm -rf  /var/cache/ail/creyate-w3/css/*
echo "Removing HTML"
rm -rf  /var/cache/ail/creyate-w3/html/*
echo "Removing Local Storage"
rm -rf ~/.config/google-chrome/Default/Local\ Storage/*creyate*
echo "Removing Chrome Cache"
#rm -rf /home/sv/.cache/google-chrome/Default/Cache/
echo "Clearing APC Caching"
php -r "apc_clear_cache();"
echo "Restarting Server"
sudo service apache2 restart
echo "Cleared Cache"
