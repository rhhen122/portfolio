if [ "cat /etc/debian_version" == "cat: etc/debian_version: No such file or directory" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* This is not a Deb-Ian Based System *==*
	echo *==* Error $ Result $ *==*
	exit
fi
if [ "git" == "bash: command not found: git" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* Git is not installed *==*
	echo *==* Error $ Result $ *==*
	exit
fi
if [ "curl" == "bash: command not found: curl" ]; then
	echo *==* Error $ Throw $ *==*
	echo *==* Curl is not installed *==*
	echo *==* Error $ Result $ *==*
	exit
fi
echo *==* Updating APT *==*
apt update 1>/dev/null 2>&1
echo *==* Updating APT-GET *==*
apt-get update 1>/dev/null 2>&1
echo *==* Installing HB PKG M *==*
# HB PKG M
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /root/.
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /root/.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# End HB PKG M
echo *==* Using HB PKG M *==*
brew install fastfetch
brew install py3
brew install go
brew install gcc
brew install vim
brew install nvim
brew install btop
brew install curl
brew install git
brew install flatpak
clear
echo $ Installed $ fastfetch py3 go gcc vim nvim btop curl wget git flatpak
fastfetch
