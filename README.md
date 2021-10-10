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
* git

### TCL Packages

* Tcl 8.5 (Before Tcl 8.5 we cannot support 'try' and have to use 'catch'. This then requires a dedicated test (if) on the contents of ::errorCode to separate the CMDLINE USAGE signal from actual errors.)
* json
* http
* tls
* cmdline (v1.5 - First version with proper error-codes)

#

## Usage Example

### main

```
└> ./TSM
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
This script expects a parameter. Use:
./TSM UpdateDB               - Update database list of available scripts
./TSM List <search_string>   - List scripts based on script names
./TSM Show <Num|Script_Name> - Show script details
./TSM GenDateNow             - Generator date now with format '%a, %d %b %Y %H:%M:%S %Z'
./TSM help <parameter>       - Show help for <parameter>
```

### UpdateDB

```
└> ./TSM UpdateDB
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
Reading Source file from '/home/eggdrop/sources.list'...
Informations list: 'MalaGaM public Scripts List' by 'https://github.com/MalaGaM' with '10' scripts Last update: 'Mon, 04 Oct 2021 15:21:19 GMT'
Reading Source file from '/home/eggdrop/sources.list.d/CrazyCat.list'...
ERROR: ::TSM::List::Get:Informations ERROR: No scripts informations found in /home/eggdrop/sources.list.d/CrazyCat.list. skipped!
Reading Source file from '/home/eggdrop/sources.list.d/MenzAgitat.list'...
ERROR: ::TSM::List::Get:Informations ERROR: No scripts informations found in /home/eggdrop/sources.list.d/MenzAgitat.list. skipped!
Total lists '1' withs scripts: '10'
```

### list

#### main

```
./TSM List
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   id   |      Name      |     version      |    Category    |                    descripstion                    |         repo         |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   1    |   mceggdrop    |     1.00.30      |      FiSH      |          Mircryption (FiSH) for eggdrop.           | MalaGaM public Scr.. |
|   2    |  Youtube-Link  |      2.6.2       |      API       | This script retrieves information about Youtube .. | MalaGaM public Scr.. |
|   3    |   PROXYCHECK   |   1.1.20210521   |    Services    |              Check Proxxy on connect               | MalaGaM public Scr.. |
|   4    |    EvaServ     |      1.5RC       |    Services    |                  Services IRC Eva                  | MalaGaM public Scr.. |
|   5    | DictionaryAPI  |      1.2.4       |      API       | TCL script for eggdrop that uses Dictionary v2 A.. | MalaGaM public Scr.. |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*
|           Help: ./TSM List -help           |               Category: all                |                   Limit: 5                    |
*--------------------------------------------*--------------------------------------------*-----------------------------------------------*
* For more information on a script: ./TSM show <id>
```

#### help

```
└> ./TSM List -help
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
TSM List [options] search_string ...
options:
 -l value             set the limit to show <5>
 -c value             set category to find <all>
 --                   Forcibly stop option processing
 -help                Print this message
 -?                   Print this message
```

#### search

```
 └> ./TSM list -c Services -l 2 serv
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   id   |      Name      |     version      |    Category    |                    descripstion                    |         repo         |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   4    |    EvaServ     |      1.5RC       |    Services    |                  Services IRC Eva                  | MalaGaM public Scr.. |
|   7    |   ClaraServ    |   1.1.20210404   |    Services    | IRC services in TCL - Trade show animation, Netw.. | MalaGaM public Scr.. |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*
|           Help: ./TSM List -help           |             Category: Services             |                   Limit: 2                    |
*--------------------------------------------*--------------------------------------------*-----------------------------------------------*
* For more information on a script: ./TSM show <ID|Name>
```

### show

```
└> ./TSM show 4
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
         SOURCE NAME          : MalaGaM public Scripts List
         SOURCE DATE          : Mon, 04 Oct 2021 15:21:19 GMT
        SOURCE CONTACT        : https://github.com/MalaGaM
          SCRIPT ID           : 4
         SCRIPT NAME          : EvaServ
        SCRIPT VERSION        : 1.5RC
       SCRIPT CATEGORY        : Services
      SCRIPT DESCRIPTION      : Services IRC Eva
        SCRIPT AUTHOR         : MalaGaM
          SCRIPT URL          : https://github.com/MalaGaM/TCL-EvaServ
       TROUBLESHOOTING        : https://github.com/MalaGaM/TCL-EvaServ/issues/new
 Minimum version for Eggdrop  : null
   Minimum version for TCL    : null
      Required packages       : null
Information post-installation : 
      Read instruction on: https://github.com/MalaGaM/TCL-EvaServ/blob/main/README.md


└> ./TSM show ClaraServ 
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
         SOURCE NAME          : MalaGaM public Scripts List
         SOURCE DATE          : Mon, 04 Oct 2021 15:21:19 GMT
        SOURCE CONTACT        : https://github.com/MalaGaM
          SCRIPT ID           : 7
         SCRIPT NAME          : ClaraServ
        SCRIPT VERSION        : 1.1.20210404
       SCRIPT CATEGORY        : Services
      SCRIPT DESCRIPTION      : IRC services in TCL - Trade show animation, Network help, User profile
        SCRIPT AUTHOR         : MalaGaM
          SCRIPT URL          : https://github.com/MalaGaM/TCL-ClaraServ
       TROUBLESHOOTING        : https://github.com/MalaGaM/TCL-ClaraServ/issues/new
 Minimum version for Eggdrop  : null
   Minimum version for TCL    : null
      Required packages       : 
                        Package Name:  IRCServices   - Minimum version: 0.0.1
Information post-installation : 
      Read instruction on: https://github.com/MalaGaM/TCL-ClaraServ/blob/main/README.md
```

### GenDateNow

```
   └> ./TSM GenDateNow
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
Sat, 09 Oct 2021 17:04:38 GMT
```

### Search

```
└> ./TSM Search fish
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Reading Config file from '/home/eggdrop/TSM.cfg'...
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   ID   |      Name      |     version      |    Category    |                    Descripstion                    |         Repo         |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*
|   1    |   mceggdrop    |     1.00.30      |      FiSH      |          Mircryption (FiSH) for eggdrop.           | MalaGaM public Scr.. |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*
|           Help: ./TSM List -help           |               Category: all                |                   Limit: 5                    |
*--------------------------------------------*--------------------------------------------*-----------------------------------------------*
* For more information on a script: ./TSM show <ID|Name>
```

#
