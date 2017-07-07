.PHONY: all build

all: build

build:
	cd static
	tar -czvf static.tar.gz *
	cd ..
	mkdir -p ~/rpmbuild/SOURCES
	cp static.tar.gz ~/rpmbuild/SOURCES
	cp ui-bg_highlight-soft_100_eeeeee_1x100.png ~/rpmbuild/SOURCES
	rpmbuild -ba loolwsd.spec
