echo "Adding repository papirus-icon-theme"
sudo add-apt-repository -y ppa:papirus/papirus

echo "Adding Sublime text"
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

echo "Adding google-chrome-repository"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

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
wget https://raw.githubusercontent.com/kripa432/scripts/master/.vimrc

echo "Installing git"
sudo apt-get install -y git
git config --global user.name "Kripa Shanker"
git config --global user.email "iamkripashanker@gmail.com"

echo "Installing vlc"
sudo apt-get install -y vlc

echo "Installing virtual-box"
sudo apt-get install -y

echo "Installing tmux"
sudo apt-get install -y tmux

echo "Installing gimp"
sudo apt-get install -y gimp

echo "Installing google chrome "
sudo apt-get install -y google-chrome-stable

echo "Installing google"
sudo apt-get install -y  chrome-gnome-shell

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

echo "Installing php"
sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql

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

echo "Installing Preload"
sudo apt-get -y install preload

#echo "Installing my-sql"
#sudo apt-get install -y mysql-server
#sudo systemctl disable mysql

echo "Installing ubuntu-restricted-extras"
sudo apt-get install -y ubuntu-restricted-extras

echo "Removing default games"
sudo apt-get purge gnome-games-common gbrainy

echo "autoclean"
sudo apt-get autoclean

echo "autoremove"
sudo apt-get autoremove



