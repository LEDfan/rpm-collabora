# collabora repo is need for recent POCO version
sudo yum install -y yum-utils
sudo wget https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7/repodata/repomd.xml.key
sudo rpm --import repomd.xml.key
sudo yum-config-manager -y --add-repo https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7

sudo yum -y groupinstall "Development Tools"
sudo yum install -y libpng-devel libcap-devel cppunit-devel libtool poco-devel npm pcre-devel openssl-devel python-polib epel-release rpm-build git fontconfig
sudo yum install -y nodejs
sudo npm install -g jake
