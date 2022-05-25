#!/bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/ptavares/zsh-kubectx.git ~/.oh-my-zsh/custom/plugins/zsh-kubectx

if command apt-get > /dev/null; then

  sed -i 's|ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc

  sed -i 's/plugins=(git)/plugins=(git kubectl helm zsh-syntax-highlighting zsh-autosuggestions zsh-kubectx)/g' ~/.zshrc

elif [[ `uname` ]]; then
  
  sed -i '' -e 's|ZSH_THEME=.*|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc

  sed -i '' -e 's/plugins=(git)/plugins=(git kubectl helm zsh-syntax-highlighting zsh-autosuggestions zsh-kubectx)/g' ~/.zshrc

fi
