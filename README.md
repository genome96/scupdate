## INSTALL SCRIPT

Enter the command below to install

````
apt update && apt upgrade -y && apt install -y bzip2 gzip wget init dos2unix coreutils openssl git screen curl jq && wget -q https://raw.githubusercontent.com/genome96/scupdate/main/setup.sh && chmod +x setup.sh && screen -S setup ./setup.sh
