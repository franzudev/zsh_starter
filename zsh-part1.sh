#!/bin/bash

chsh -s $(which zsh)

if command apt-get > /dev/null; then
    sudo apt-get update
    
    sudo apt-get -y install zsh
    
    mkdir ~/.fonts

    wget -O ~/.fonts/regular.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Regular.ttf
    
    wget -O ~/.fonts/bold.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Bold.ttf
    
    wget -O ~/.fonts/italic.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Italic.ttf
    
    wget -O ~/.fonts/bold_italic.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Bold%20Italic.ttf

elif [[ `uname` == "Darwin" ]]; then

    wget -O ~/Library/Fonts/regular.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Regular.ttf
    
    wget -O ~/Library/Fonts/bold.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Bold.ttf
    
    wget -O ~/Library/Fonts/italic.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Italic.ttf
    
    wget -O ~/Library/Fonts/bold_italic.ttf https://github.com/romkatv/powerlevel10k#:~:text=MesloLGS%20NF%20Bold%20Italic.ttf

fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

