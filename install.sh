#!/bin/bash

# Constants
USER_NAME='rrekaf'
NODE_VERSION='21'


# Basics
sudo add-apt-repository universe

sudo apt update && sudo apt upgrade -y
sudo apt install git curl wget gcc cmake libfuse2 gh -y

# Editors


# Programming languages
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install $NODE_VERSION

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
cargo install bob-nvim
bob use stable
echo "export PATH='$HOME/.local/share/bob/nvim-bin/:$PATH'" >> $HOME/.bashrc
source $HOME/.bashrc
 wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz && sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz

 echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc

 wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.2.3.20090.tar.gz && tar -xzvf jetbrains-toolbox-2.2.3.20090.tar.gz
 rm jetbrains-toolbox-2.2.3.20090.tar.gz
jetbrains-toolbox-2.2.3.20090/jetbrains-toolbox

rm -r jetbrains-toolbox-2.2.3.20090
