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
# Save private key in a file (use full path)
github-alt_id_rsa.pub
# Enter passphrase (for more security but optional)
# Public key will be auto generated 
```
#### Generate Public/Private Key (CDE) - More Secure
```sh
# Step 1: Generate Key Pair
ssh-keygen -t ed25519
# Step 2: Obtain public key credentials by catting its saved location
cat /home/codespace/.ssh/id_ed25519.pub # default key storage place 
# Step 3: Indicated below
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
 #### Deploy Keys VS Authentication Keys
 > Github allows us to set up ssh-keys for authentication & also deployment
 * Deploy Keys: https://github.com/Ben-Tay/GitHub-Examples/settings/keys 
 * It can be applied to multiple repositories and needs to be unqiue unlike normal ssh-auth keys
 * This page illustrates in further detail: https://stackoverflow.com/questions/39659302/difference-between-account-ssh-key-vs-deployment-ssh-key

 #### Deploy Keys
 * Allows one to attach public keys directly to a `repository`
 
 Use Cases:
 1. Build servers or CI/CD 3rd party services that need to clone the repone so they perform a build or a deploy
 2. `Single Repo Access`
    * Allows for single key pair for single Git repo rather than shared key pair for multiple repos
3. Avoid using Personal Account Access Tokens