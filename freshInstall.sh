#sudo sed -i 's%archive.ubuntu.com%ftp.iitm.ac.in%' /etc/apt/sources.list
#sudo sed -i 's%in.archive.ubuntu.com%ftp.iitm.ac.in%' /etc/apt/sources.list

$file=/etc/apt/sources.list.d/papirus-ubuntu-papirus-bionic.list
if [ -f $FILE ]; then
  echo "File $FILE exists."
else
  echo "File $FILE does not exist." 
  echo "Adding repository papirus-icon-theme"
  sudo add-apt-repository -y ppa:papirus/papirus
fi



$file=/etc/apt/sources.list.d/google-chrome.list
if [ -f $FILE ]; then
  echo "File $FILE exists."
else
  echo "File $FILE does not exist." 
  echo "Adding google-chrome-repository"
  sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
  sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
fi


echo "update..."
sudo apt-get update

echo "upgrade"
sudo apt-get -y upgrade

echo "cd ~"
cd ~

echo "Installing vim"
sudo apt-get install -y vim

#intalling color scheme
mkdir ~/.vim
mkdir ~/.vim/colors/
wget -O ~/.vim/colors/monokai.vim  https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim


#setting .vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/kripa432/scripts/master/.vimrc

echo "Installing git"
sudo apt-get install -y git
#git config --global user.name "Kripa Shanker"
#git config --global user.email "iamkripashanker@gmail.com"

echo "Installing vlc"
sudo apt-get install -y vlc

#echo "Installing virtual-box"
#sudo apt-get install -y virtualbox

echo "Installing tmux"
sudo apt-get install -y tmux

echo "Installing gimp"
sudo apt-get install -y gimp

echo "Installing google chrome "
sudo apt-get install -y google-chrome-stable

echo "Installing google"
sudo apt-get install -y  chrome-gnome-shell

echo "Installing net-tools"
sudo apt-get install -y net-tools

#echo "Installing virtualbox"
#sudo apt-get install -y virtualbox

echo "Installing gcc"
sudo apt-get install -y gcc

echo "Installing g++"
sudo apt-get install -y g++

echo "Installing file zilla"
sudo apt-get install -y filezilla

echo "Installing JDK"
sudo apt-get install -y default-jdk

echo "Installing apache2"
sudo apt-get install -y apache2
sudo systemctl disable apache2

#echo "Installing php"
#sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

echo "Install gnome-tweak-tool"
sudo apt-get install -y gnome-tweak-tool

echo "Installing gnome-music"
sudo apt install -y gnome-music

echo "Installing gnome-boxes"
sudo apt-get install -y gnome-boxes

echo "Installing deluge"
sudo apt install -y deluge

echo "Installing thunderbird"
sudo apt-get install -y thunderbird

echo "Installing youtube-dl"
sudo apt install -y youtube-dl

echo "Installing dc++"
sudo apt-get install -y eiskaltdcpp

echo "Installing numix-gtk-theme"
sudo apt-get install -y numix-gtk-theme
gsettings set org.gnome.desktop.interface gtk-theme "Numix"

echo "setting minimize , maximize button to right"
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

echo "Installing papirus-icon-theme"
sudo apt install -y papirus-icon-theme
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'

echo "installing sublime text"
sudo apt-get install -y sublime-text-installer

echo "Install curl"
sudo apt-get -y install curl


echo "Install Samba"
sudo apt-get -y install samba

echo "Install build-essential"
sudo apt-get install build-essential -y

sudo rm /etc/samba/smb.conf

sudo wget -O /etc/samba/smb.conf https://raw.githubusercontent.com/kripa432/scripts/master/smb.conf

sudo a2enmod userdir

echo "Installing Preload"
sudo apt-get -y install preload

#echo "Installing my-sql"
#sudo apt-get install -y mysql-server
#sudo systemctl disable mysql

echo "Removing default games"
sudo apt-get -y purge gnome-games-common gbrainy

echo "autoclean"
sudo apt-get -y autoclean

echo "autoremove"
sudo apt-get autoremove

echo "texstudio"
sudo apt-get -y install texstudio texlive-full

echo "Installing ubuntu-restricted-extras"
sudo apt-get install -y ubuntu-restricted-extras

