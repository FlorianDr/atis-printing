## Printing at ATIS (KIT Campus)
By default, it will use the standard settings for printing on printer with name "pool-sw1". Feel free to adapt.

### Setup
Copy the following to your ~/.ssh/config and modify:
```
Host atis
  HostName i08fs1.ira.uka.de
  User s_{6 letters of your lastname}
```
Copy your public key to your ATIS user account:
```sh
ssh-copy-id -i ~/.ssh/mykey s_{6 letters of your lastname}@i08fs1.ira.uka.de
```

More information to [ssh setup](https://www.ssh.com/ssh/copy-id)

### Usage
Open a terminal and run the script with a filename:
```sh
./print.sh ~/test.txt
```
