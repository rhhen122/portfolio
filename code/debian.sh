# **  *** **. ***   *   *      ***** * *
# * * **  ***  |   * *  *__     *._  ***
# **  *** **' *** *   * *  * <>***** * *
# Made by ROKY HENDERSON (https://roky.rhhen.xyz/)
# Copy Right (C)
if [ ! -f "/etc/debian_version" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* This is not a Deb-Ian Based System *==*
	echo *==* Error $ Result $ *==*
	exit
fi
if [ ! -f "/bin/git" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* Git is not installed *==*
	echo *==* Error $ Result $ *==*
	exit
fi
if [ ! -f "/bin/curl" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* Curl is not installed *==*
 	echo 
	echo *==* Error $ Result $ *==*
	exit
fi
clear
echo "
    ___     _     _                   _     
   /   \___| |__ (_) __ _ _ __    ___| |__  
  / /\ / _ \  _ \| |/ _  |  _ \  / __|  _ \ 
 / /_//  __/ |_) | | (_| | | | |_\__ \ | | |
/___,/ \___|_.__/|_|\__,_|_| |_(_)___/_| |_|
"
echo *==* Welcome to DEBIAN.SH *==*
echo Do you wish to continue? [Enter/Cntrl + C]
read
echo *==* Updating APT *==*
apt update 1>/dev/null 2>&1
echo *==* Updating APT-GET *==*
apt-get update 1>/dev/null 2>&1
echo *==* Installing HB PKG M *==*
# HB PKG M
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /root/.
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo 8
clear
# End HB PKG M
echo *==* Using HB PKG M *==*
echo *==* Installing FF *==*
brew install fastfetch 1>/dev/null 2>&1
echo *==* Installing Py3 *==*
brew install py3 1>/dev/null 2>&1
echo *==* Installing Go *==*
brew install go 1>/dev/null 2>&1
echo *==* Installing GCC *==*
brew install gcc 1>/dev/null 2>&1
echo *==* Installing VIM *==*
brew install vim 1>/dev/null 2>&1
echo *==* Installing NEOVIM *==*
brew install nvim 1>/dev/null 2>&1
echo *==* Installing BashTOP *==*
brew install btop 1>/dev/null 2>&1
echo *==* Installing curL *==*
brew install curl 1>/dev/null 2>&1
echo *==* Installing GIT *==*
brew install git 1>/dev/null 2>&1
echo *==* Installing FlatPak *==*
brew install flatpak 1>/dev/null 2>&1
clear
echo *==* $ Installed $ fastfetch py3 go gcc vim nvim btop curl wget git flatpak *==*
fastfetch
