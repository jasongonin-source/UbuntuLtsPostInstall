apt-get update
apt install tilix                  -y -y # Multi terminal application
apt install gnome-tweaks           -y -y # Helps in tweaking the gnome desktop environment
apt install openssh-server         -y -y # OpenSSH
apt-get install build-essential    -y -y # Development essential tools
apt-get install git                -y -y # SCM tool
apt-get install vim                -y -y # a real editor
apt-get install tree               -y -y # a cli tool to check directory content
apt-get install p7zip-full         -y -y # 7zip support
apt-get install p7zip-rar          -y -y # 7zip rar support
apt-get install nodejs -y # nodejs (depend NodeJS installation repo definition  )
apt-get install npm  -y # npm (depend NodeJS installation repo definition)
apt-get install graphviz                   -y # Graphviz installation to create javadocs
apt-get install ansible			        -y # Configuration Automation and provisioning tool
apt-get install pandoc				        -y # document generator and converter (docx to markdown or markdown to latex and so on)
apt-get install texlive-latex-base         -y # required by pandoc to create pdf out of other formats
apt-get install texlive-fonts-recommended  -y # required by pandoc to create pdf out of other formats
apt-get install texlive-fonts-extra        -y # required by pandoc to create pdf out of other formats
apt-get install texlive-latex-extra        -y # required by pandoc to create pdf out of other formats
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
jabba install amazon-corretto@1.8.222-10.1
jabba alias default amazon-corretto@1.8.222-10.1 # to set as default jdk when opening a new shell
sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list"
apt-get update
apt-get install owncloud-client -y
curl  https://mirror.nohup.it/apache//directory/apacheds/dist/2.0.0.AM26/apacheds-2.0.0.AM26-amd64.deb -o apacheds-2.0.0-AM26-amd64-amd64.deb
chmod +x apacheds-2.0.0-AM26-amd64-amd64.deb
dpkg -i apacheds-2.0.0-AM26-amd64-amd64.deb
# docker
apt install apt-transport-https ca-certificates -y # required docker
apt install gnupg-agent software-properties-common -y # required docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs)   stable"
apt update
apt install docker-ce docker-ce-cli containerd.io -y
