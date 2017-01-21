#Installation

##Prebuilt
No downloads of prebuilt packages are currently available, I might set up CI to build some in an automated fashion later.
##Building and installing
Clone the project, then run
```
make
flatpak build-bundle --verbose --ostree-verbose repo Xonotic-0.8.1.flatpak org.xonotic.xonotic
flatpak install --user Xonotic-0.8.1.flatpak
```
I might put installation, cleanup etc. into the Makefile in the future.



#TODO
* Set up automated builds of the .flatpak
* Add `make clean` and `make install`
* Set up a proper flatpak repo
* Build xonotic from source. This is difficult due to xonotic's esoteric build process.
* Make a nightly version built from the xonotic git repo available
* Add a .desktop file
