.PHONY: all build

all: build

build:
	rm -rf ~/rpmbuild/BUILD
	mkdir -p ~/rpmbuild/BUILD
	git clone https://anongit.freedesktop.org/git/libreoffice/online.git -b 2.1.2 ~/rpmbuild/BUILD
	tar -czvf static.tar.gz -C static .
	mkdir -p ~/rpmbuild/SOURCES
	cp static.tar.gz ~/rpmbuild/SOURCES
	cp ui-bg_highlight-soft_100_eeeeee_1x100.png ~/rpmbuild/SOURCES
	rpmbuild -ba loolwsd.spec
	cp -r ~/rpmbuild/RPMS/* /vagrant
