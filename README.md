# Script-to-access-windows-10-using-Bash-Script

## Part 1: Setup Openssh server on Windows-10 
### On Windows
```
goto: Settings > apps and features > Add feature > Openssh Server > 
Install
```
i. Check installation status
```
> Get-Service -Name *ssh* 
```
ii. Enable ssh-auth service
```
goto services > OpenSSH Auth Agent Properties > Startuptype=Automatic > Apply > Ok
```
iii. Start sshd service
```
> Start-Service sshd
> Start-Service ‘ssh-agent’
```
iv. Enable services on startup
```
> Set-Service -Name sshd -StartupType 'Automatic'
> Set-Service -Name ‘ssh-agent’ -StartupType 'Automatic'
```
### On Ubuntu:
v. Install Openssh and sshpass
```
sudo apt-get install openssh-server && sudo apt install sshpass
```

## Part 2: Build and run script
i. Create script
```bash
touch script.sh
```
ii. Copy this content to the file
```
#!/bin/bash
USERNAME=windows10
HOSTNAME=192.168.159.130
SCRIPT="dir"
sshpass -p "123" ssh -l  ${USERNAME} ${HOSTNAME} "${SCRIPT}"
```
iii. Run script
```bash
bash script.sh
```
You will see results of command ran via ssh bash file.

---------------------------------------------------------------------
<img width="525" alt="Screenshot 2022-07-28 at 3 48 19 PM" src="https://user-images.githubusercontent.com/105775522/181491853-5bf7ae8c-2124-4d34-aed3-f40678b64f7b.png">

