# Sync some terminal configuration files through iCloud

## Prerequisites

* Mac OS / ZSH shell
* [iTerm2](https://iterm2.com)
* [Oh My Zsh](https://ohmyz.sh)

## Steps to follow

### Link iCloud directory

```
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ~/iCloud
```

### First time

Skip this step if you've done this before with your iCloud account.

```
cd ~/iCloud
git clone https://github.com/ryanstrickler/terminal.git
```

### Link dotfiles

```
rm ~/.env
ln -s ~/iCloud/terminal/.env ~/.env
rm ~/.zshrc
ln -s ~/iCloud/terminal/.zshrc ~/.zshrc
rm ~/.gitconfig
ln -s ~/iCloud/terminal/.gitconfig ~/.gitconfig
rm ~/.gitignore_global
ln -s ~/iCloud/terminal/.gitignore_global ~/.gitignore_global
rm ~/.gemrc
ln -s ~/iCloud/terminal/.gemrc ~/.gemrc
rm ~/.nanorc
ln -s ~/iCloud/terminal/.nanorc ~/.nanorc
rm ~/.pryrc
ln -s ~/iCloud/terminal/.pryrc ~/.pryrc
```

### Link theme

```
rm ~/.oh-my-zsh/themes/cobalt2.zsh-theme
ln -s ~/iCloud/terminal/themes/cobalt2-modified.zsh-theme ~/.oh-my-zsh/themes/cobalt2.zsh-theme
```