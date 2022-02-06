chmod +x ./.dotfiles/setup.sh
./.dotfiles/setup.sh

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove -y
##
sudo apt-get install -y --install-recommends \
  git tmux vim xclip curl npm telegram-desktop default-jre \
  qt5-qmltooling-plugins fonts-dejavu-extra fonts-ipafont-gothic \
  fonts-ipafont-mincho unrar \
  python-setuptools-doc python3.9-doc binfmt-support python3-pip python3.9 python3.9-venv \
  i965-va-driver-shaders libbluray-bdj libportaudio2 qtwayland5 sndiod
#
sudo npm i --update npm -g

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $(whoami)
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo apt install snapd -y
sudo snap install postman
sudo snap install code
