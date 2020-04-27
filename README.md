# Leandro's Dotfiles

My personal dotfiles, it download and install my favourite apps and setup my fish shell configuration.

## Mac
```
cd ~
git init
git remote add origin https://github.com/leandrorosa/dotfiles.git
git pull origin master
./install/macos/install.sh
```

## Centos
```
cd ~
sudo yum install git -y
git init
git remote add origin https://github.com/leandrorosa/dotfiles.git
git pull origin master
./install/centos/install.sh
```