FROM centos:7
RUN yum -y update \
  && yum install -y yum-utils wget \
  && wget https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7/repodata/repomd.xml.key \
  && rpm --import repomd.xml.key \
  && yum-config-manager -y --add-repo https://www.collaboraoffice.com/repos/CollaboraOnline/CODE-centos7
RUN  yum -y groupinstall "Development Tools" \
  && yum install -y libpng-devel libcap-devel cppunit-devel libtool poco-devel npm pcre-devel openssl-devel python-polib epel-release rpm-build git fontconfig python-polib
# first epel is needed
RUN yum install -y nodejs npm
RUN npm install -g jake
RUN useradd  builder
