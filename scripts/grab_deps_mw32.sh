#!/bin/bash
log(){
	printf "$1\n"
}

triplet_install(){
	pacman -S --noconf mingw-w64-i686-$1;
}

main(){
	log "Dependency grab started on $(date +"%x %I:%M %p").";
	triplet_install "libvncserver";
	triplet_install "cairo";
	triplet_install "dlfcn";
	triplet_install "boost";
	triplet_install "sqlite3";
	triplet_install "cyrus-sasl";
	triplet_install "winpthreads-git";

	log "Dependency grab finished.";
};main;
