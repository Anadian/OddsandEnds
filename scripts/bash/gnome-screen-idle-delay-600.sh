#!/bin/bash
echo "$(date --utc --iso-8601='seconds') Setting the screen to turn off after 600 seconds of no input." >> ~/gnome-screen.log;
gsettings set org.gnome.desktop.session idle-delay 600;
