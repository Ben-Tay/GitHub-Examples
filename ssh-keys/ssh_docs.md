### SSH 
Common strategy to `authenticate to perform git operations` on remote Github repo is using SSH keys

#### Cloning use SSH (credentials are required if repo is non-public)
```ssh
git clone git@github.com:Ben-Tay/GitHub-Examples.git
```
#### Generate Public/Private key Pair (RSA)
```sh
# Generate the key-pair
ssh-keygen -t rsa
# More secure key-pair (ECD)
ssh-keygen -t ed25519
# Save private key in a file (use full path)
github-alt_id_rsa.pub
# Enter passphrase (for more security but optional)
# Public key will be auto generated 
```
#### Public Key (Add to github account)
> Cat the file path to the public key (in linux) and add its contents to our github account
https://github.com/settings/keys
* Upon login everytime, Github stores a copy of that public key & compares it with the public key on your local computer
* It then sends an encrypted challenge message if the public key matches
* Only the private key on your local computer can decrypt that message and is then used to sign a digital signature 
* Signed message is then sent back to Github server for verification & then connection

> For WSL users and if create non default key might need to add it 
```
ssh-add privatekeypath
eval `ssh-agent`

# Debug if authentication connection works (if ssh-add doesnt work)
ssh-T git@github.com 
```