# flatpak-xonotic    

A flatpak package for xonotic.       

## Building     
First checkout the repo:     
```
git clone https://github.com/casept/flatpak-xonotic     
cd flatpak-xonotic     
```

Install the needed runtime and SDK:        
```
flatpak remote-add --user --if-not-exists --from gnome https://sdk.gnome.org/gnome.flatpakrepo       
flatpak install --user gnome org.freedesktop.Sdk 1.4      
flatpak install --user gnome org.freedesktop.Platform 1.4          
```

And build:
```
make     
```

## Installation      
Just run `make install`. This will install the game for your local user.     

## Running        
In most desktop environments a xonotic menu entry will have been created under `games`. If that's not the case you may need to log out and back in again. If you still can't find the icon your DE might not be looking in the directory where flatpak places .desktop files. If that's the case you'll have to run `flatpak run org.xonotic.xonotic` to start the game.

## Accessing save games/maps/etc.
For sandboxing reasons the game is configured to save user data to `~/.var/app/org.xonotic.xonotic/.xonotic` instead of the usual `~/.xonotic`. This directory will have the same structure as it does when the game is run from the upstream .zip file.
