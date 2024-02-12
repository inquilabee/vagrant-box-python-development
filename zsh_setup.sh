# Some fonts 
sudo apt-get -y install \
     fonts-dejavu-core \
     fonts-freefont-ttf \
     fonts-inconsolata \
     fonts-liberation \
     fonts-font-awesome \
     fonts-powerline

# Some icons
sudo apt-get -y install \
     fonts-noto-color-emoji \
     fonts-noto-color-emoji-core \
     adwaita-icon-theme \
     humanity-icon-theme \
     faenza-icon-theme

# Install Oh My Zsh
# Remove existing zsh and oh-my-zsh
echo "Removing existing zsh and oh-my-zsh"

rm -rf ~/.oh-my-zsh
rm -rf ~/.zshrc
rm -rf ~/.p10k.zsh
rm -rf ~/powerlevel10k

# Zsh with Oh My Zsh
sudo apt update -y
sudo apt install zsh -y 

# Change default shell to zsh for the vagrant user
echo "Changing default shell to zsh"
sudo usermod -s $(which zsh) vagrant

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ZSH Theme 

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# https://github.com/romkatv/powerlevel10k/blob/master/README.md#weird-things-happen-after-typing-source-zshrc 
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
# Manually run ~/.oh-my-zsh/oh-my-zsh.sh if this does not work

# Add scripts to default shell rc file: .zshrc
echo "Adding scripts to .zshrc"
echo "source /vagrant/auto_activate_venv_script.sh" >> ~/.zshrc
echo "source /vagrant/.custom.zshrc" >> ~/.zshrc

# Configure Powerlevel10k
echo "Configuring Powerlevel10k"
echo "Run p10k configure to configure Powerlevel10k"