wget -O - https://content.runescape.com/downloads/ubuntu/runescape.gpg.key | apt-key add -
mkdir -p /etc/apt/sources.list.d
echo "deb https://content.runescape.com/downloads/ubuntu trusty non-free" > /etc/apt/sources.list.d/runescape.list
apt-get update
apt-get install -y runescape-launcher
rm -f /etc/apt/sources.list.d/runescape.list

sed -i -e "s+Exec=+Exec=gamemoderun %commands% +g" /usr/share/applications/runescape-launcher.desktop