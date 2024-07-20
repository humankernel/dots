# dotfiles

# Get Started

```sh
 export DOTFILE_REPO="git@github.com:rivasjoaquin02/dotfiles.git"              
 export GH_SSH_PRIVATE="$HOME/.ssh/id_ed25519"                    
 export GH_SSH_PUBLIC="${GH_SSH_PRIVATE}.pub"                           
                                                                        
 function dotInstall() {                                                
     echo "Generating new SSH key to interact with dotfiles repository."
     ssh-keygen -t ed25519 \
         -C "$USER" \
         -f $GH_SSH_PRIVATE                                             
     eval "$(ssh-agent -s)"                                             
     ssh-add $GH_SSH_PRIVATE                                            
     echo "✨ New key generated."                                                                                                                        
     while ! [ -d "$HOME/.dotfiles" ]                                   
     do                                                                 
         echo "Add your new key to https://github.com/settings/ssh/new"    
         echo "- - - - -"                                               
         cat $GH_SSH_PUBLIC                                             
         echo "- - - - -"                                               
     echo "Once your key is add, press return to continue."             
     read                                                           
     git clone $DOTFILE_REPO                                            
     done                                                                                          
     echo "🚀 Running install script "                                                   
     ~/dotfiles/install.sh              # install script should be made +x in git index   
     return 0                                                           
 }                                                                      
 dotInstall 
```
