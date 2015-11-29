#!/bin/sh
if ! hash wmctrl 2>/dev/null; then
 sudo apt-get install -y wmctrl
fi

SERVICE='gnome-terminal'

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
  wmctrl -xa $SERVICE
else
  $SERVICE
fi
