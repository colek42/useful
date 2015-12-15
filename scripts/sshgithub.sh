#gen SSH

ssh-keygen -t rsa -b 4096 -C "nkennedy@novetta.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip -y

xclip -sel clip < ~/.ssh/id_rsa.pub


google-chrome https://github.com/settings/ssh &>> /dev/null &
echo "ssh key is now in clipboard"




