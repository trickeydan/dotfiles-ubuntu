sudo add-apt-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible git -y
cd ~
git clone https://github.com/trickeydan/dotfiles.git .dotfiles
cd .dotfiles
sudo ansible-playbook -i hosts laptop.yml --ask-vault-pass
sudo reboot
