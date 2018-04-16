# Makefile-addons
Makefile-addons gives some usefull tools to make the use of makefiles more easy.

## Summary

* How does it work ?
  * Let's begin
  * Addons
  * Modules
  * Script
  * Help
* Addons
  * Addon std
  * Addon pic
  * Addon progCompil

## How does it work ?
### Let's begin
Makefile_addons is design in a simple way in a API design.

Inside of your Makefile you can add some addons with the line  :
``` make
include addons_makefile/makefile_addon_std
```  
and can be used inside the Makefile

### Addons
Addons are collections of modules that solves problems in the same field.
### Modules
Modules are composed with one or more scipts that can solves a single problem.
### Script
Scripts are some small codes that are used to build more complex scripts that are used to build modules.
### Help
the help command that can be used to see all usefull commands that can be used. You can found help with command :
``` make
make help
```
or
``` make
make
```
Others commands can be found in the documentation bellow

## Addons
### Addon std
#### require
/
#### Color module

##### Variables
* COM_COLOR   = dark blue
* OBJ_COLOR   = light blue 
* OK_COLOR    = green   
* ERROR_COLOR = red   
* WARN_COLOR  = yellow
* NO_COLOR    = no color
##### Scripts
std_color -> display the colors in a terminal
##### Usage
This script display an exemple of colors that can be used
``` make
make std_color
```
You can use color variables inside your comment line like this :
``` make
@ echo -e "Couleur OK : $(OK_COLOR) texte $(NO_COLOR)"
```

### Addon pic
This module contains modules to work with pictures
#### require
* makefile_addon_std (color module) : to create colored console outputs
* guetzli : compression program
#### compress module
##### Variables
PATH_RAW= path of the original files (path from the root of the project)
PATH_OPTI= path of the output of the compressed files (path from the root of the project)
QUALITY= express quality of compression of the pictures
EXTENSION = extension of the pictures (jpg,png,...)
##### Scripts
##### Usage




### Addon progCompil
#### require
* makefile_addon_std (color module) : to create colored console outputs


## Credits
This project was created by **Antoine Lambert** under *MIT* license
