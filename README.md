# dotfiles
This is a git repository for managing configuration files in your home directory.

## Setup
### Create a "bare" repository:
```shell
git init --bare $HOME/.dotfiles
```
### Create an alias to use a separate working directory:
```shell
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
### Ignore untracked files in home directory:
```shell
dotfiles config --local status.showUntrackedFiles no
```
### Add the alias to your shell profile:
```shell
cat >> $HOME/.profile << EOF
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
EOF
dotfiles add .profile
```
### Ignore the repository directory to avoid problems with recursion:
```shell
cat > $HOME/.dotfiles/.gitignore << EOF
.dotfiles
EOF
```
## Usage
### Clone repository into your home directory:
```shell
dotfiles clone --bare https://github.com/ajchace/dotfiles.git .dotfiles
```
### Clone submodules:
```shell
dotfiles submodule init
```
### Update submodules:
```shell
dotfiles submodule update
```
### Check configuration files out into your home directory:
```shell
dotfiles checkout
```
### Add a configuration file to the repository:
```shell
dotfiles add $HOME/.myconfigfile
```
### Commit a configuration file to the repository:
```shell
dotfiles commit -m "Added configuration file for myconfig"
```
