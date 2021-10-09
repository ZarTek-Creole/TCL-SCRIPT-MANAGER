# TSM (TCL-SCRIPT-MANAGER)
## ENglish
TSM (TCL-SCRIPT-MANAGER) is a terminal TCL script manager that allows you to easily install, update and uninstall TCL scripts.
It is based on a system of "source lists" containing catalogs of customizable scripts (on git), like a kind of APT for TCL Eggdrop script.

## FRançais
TSM (TCL-SCRIPT-MANAGER) est un gestionnaire de scripts TCL en terminal qui vous permet d'installer, de mettre à jour et de désinstaller facilement des scripts TCL.
Il est basé sur un système de "sources listes" contenant des catalogues de scripts (sur git) personnalisables, comme un genre de APT pour script TCL Eggdrop.


#
## Pre requis
* Eggdrop
* TCL
### TCL Packages:
* Tcl 8.5 (Before Tcl 8.5 we cannot support 'try' and have to use 'catch'. This then requires a dedicated test (if) on the contents of ::errorCode to separate the CMDLINE USAGE signal from actual errors.)
* json
* http
* tls
* cmdline (v1.5 - First version with proper error-codes)
#