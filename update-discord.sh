#!/bin/bash
set -e
export HOME=/home/$SUDO_USER
if pgrep -f Discord >/dev/null; then
  echo "Discord is running. Close it before updating."
  exit 1
fi
wget -O $HOME/discord.tar.gz "https://discord.com/api/download/stable?platform=linux&format=tar.gz"
tar -xzf $HOME/discord.tar.gz -C $HOME
rsync -a --delete $HOME/Discord/ /opt/discord/
rm $HOME/discord.tar.gz
rm -rf $HOME/Discord
echo "Done :D"
