## NOTE 
```bash 
sudo apt install fish -y 
fish 
exit # exec bash 

```


## Setting up OMZ for better working experience with terminal 
```bash 
sudo apt instal zsh -y 
```
1. Syntax Hightlighting 
2. Auto suggestions 

```bash 
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting



vim ~/.zshrc
# press i -> in order to write the file 
# find the plugins=(git)

plugins=(git zsh-autosuggestions zsh-syntax-highlighting )
# press ESC + type :wq!
source ~/.zshrc 

sudo apt install tdlr -y 
sudo apt install tree -y
tdlr --update 
#mkdir -p dir
```


