sudo apt update
echo "--base--"# base
sudo apt install tilix                  -y -y # Multi terminal application
sudo apt install gnome-tweaks           -y -y # Helps in tweaking the gnome desktop environment
sudo apt install openssh-server         -y -y # OpenSSH
sudo apt install build-essential    -y -y # Development essential tools
sudo apt install git                -y -y # SCM tool
sudo apt install vim                -y -y # a real editor
sudo apt install tree               -y -y # a cli tool to check directory content
sudo apt install p7zip-full         -y -y # 7zip support
sudo apt install p7zip-rar          -y -y # 7zip rar support
sudo apt install nodejs -y # nodejs (depend NodeJS installation repo definition  )
sudo apt install npm  -y # npm (depend NodeJS installation repo definition)
echo "--graphviz--"# graphviz
sudo apt install graphviz                   -y # Graphviz installation to create javadocs
echo "--ansible--"# ansible
sudo apt install ansible			        -y # Configuration Automation and provisioning tool
echo "--pandoc--"# pandoc
sudo apt install pandoc				        -y # document generator and converter (docx to markdown or markdown to latex and so on)
echo "--texlive--"# texlive
sudo apt install texlive-latex-base         -y # required by pandoc to create pdf out of other formats
sudo apt install texlive-fonts-recommended  -y # required by pandoc to create pdf out of other formats
sudo apt install texlive-fonts-extra        -y # required by pandoc to create pdf out of other formats
sudo apt install texlive-latex-extra        -y # required by pandoc to create pdf out of other formats
echo "--jabba--"# jabba
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
jabba install amazon-corretto@1.8.222-10.1
jabba alias default amazon-corretto@1.8.222-10.1 # to set as default jdk when opening a new shell
echo "--owncloud--"# owncloud
sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list"
sudo apt update
sudo apt install owncloud-client -y
echo "--apacheds--"# apacheds
curl  https://mirror.nohup.it/apache//directory/apacheds/dist/2.0.0.AM26/apacheds-2.0.0.AM26-amd64.deb -o apacheds-2.0.0-AM26-amd64-amd64.deb
chmod +x apacheds-2.0.0-AM26-amd64-amd64.deb
dpkg -i apacheds-2.0.0-AM26-amd64-amd64.deb

echo "--docker--"# docker
sudo apt install apt-transport-https ca-certificates -y # required docker
sudo apt install gnupg-agent software-properties-common -y # required docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs)   stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER
sudo newgrp docker
which docker

echo "--docker-compose--"# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl daemon-reload
sudo systemctl restart docker.service
which docker-compose

echo "--enpass--"# enpass
echo "deb https://apt.enpass.io/ stable main" > \
  /etc/apt/sources.list.d/enpass.list
wget -O - https://apt.enpass.io/keys/enpass-linux.key | apt-key add -
sudo apt install enpass -y
which enpass

echo "--nice environnement updates--"#
#sudo apt-get install ttf-mscorefonts-installer -y
sudo add-apt-repository ppa:no1wantdthisname/ppa
#sudo apt-get update 
#sudo apt-get install fontconfig-infinality -y
#wget https://github.com/Infinality/fontconfig-infinality/tree/master/infinality

echo "--owncloud--"#
wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_18.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt install owncloud
which owncloud

echo "--zsh environnement--"
sudo apt-get install zsh -y # if you like it, zsh is a modern shell
which zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "--intellij--"
sudo add-apt-repository ppa:mmk2410/intellij-idea-community
sudo apt update
sudo apt install intellij-idea-community -y
which idea

echo "--other tool in environnement--"
sudo apt-get install sublime-text  -y # (if this command doesn't work try "snap install sublime-text --classic")
which subl
sudo apt install meld  -y 
which meld
sudo apt install dos2unix  -y 
which dos2unix
sudo apt install tig  -y 

echo "--various environnement--"
sudo ansible-galaxy install gantsign.oh-my-zsh 
sudo apt install maven -y
which mvn
sudo apt-get install network-manager-l2tp-gnome -y
sudo apt-get install cifs-utils -y

echo "--keepass2--"
sudo add-apt-repository ppa:jtaylor/keepass -y
sudo apt update 
sudo apt install keepass2 -y
which keepass2

echo "--Sublime--"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y
which subl

echo "--VirtualBox 6.0--"
sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-6.0 -y
/usr/lib/virtualbox/vboxdrv.sh setup
which virtualbox
vboxmanage --help | head -n 1 | awk '{print $NF}
wget "https://download.virtualbox.org/virtualbox/6.0.18/Oracle_VM_VirtualBox_Extension_Pack-6.0.18-136238.vbox-extpack"
sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-6.0.18-136238.vbox-extpack
