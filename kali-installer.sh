sudo su
apt-get update
apt-get install -y git curl vim

echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list
echo "# deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

gpg --keyserver pgpkeys.mit.edu --recv-key  ED444FF07D8D0BF6
gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -

apt-get update
apt-cache search kali-linux
