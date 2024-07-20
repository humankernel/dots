# dotfiles

## Github SSH

```sh            
export GH_SSH_PRIVATE="~/.ssh/id_ed25519"                    
export GH_SSH_PUBLIC="${GH_SSH_PRIVATE}.pub" 

# create ssh key
ssh-keygen -t ed25519 -C $USER -f $GH_SSH_PRIVATE

eval "$(ssh-agent -s)"

# add key
ssh-add $GH_SSH_PRIVATE

# Add your new key to https://github.com/settings/ssh/new
cat $GH_SSH_PUBLIC
```