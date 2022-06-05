<span class="badge-opencollective"><a href="https://github.com/ZarTek-Creole/DONATE" title="Donate to this project"><img src="https://img.shields.io/badge/open%20collective-donate-yellow.svg" alt="Open Collective donate button" /></a></span>
[![CC BY 4.0][cc-by-shield]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg
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

### Donation

<github.com/ZarTek-Creole/DONATE>

### Website

<github.com/ZarTek-Creole/TCL-SCRIPT-MANAGER>

### Support

<github.com/ZarTek-Creole/TCL-SCRIPT-MANAGER/issues>

### Docs

<github.com/ZarTek-Creole/TCL-SCRIPT-MANAGER/wiki>

## Usage Example

### main

```
└> ./TSM
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
This script expects a parameter. Use:
./TSM UpdateDB               - Update database list of available scripts
./TSM List   <search_string> - List scripts based on script names
./TSM Search <search_string> - Search in scripts descriptions
./TSM Show        <Num|Name> - Show script details
./TSM Install     <Num|Name> - Install script
./TSM GenDateNow             - Generator date now with format '%a, %d %b %Y %H:%M:%S %Z'
./TSM help       <parameter> - Show help for <parameter>
```

### UpdateDB

```
└> ./TSM UpdateDB
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
Checking script repository from '/home/eggdrop/sources.list'... Please be patient, it may take a while ...
Informations list: 'ZarTek public Scripts List' by 'github.com/ZarTek-Creole' with '11' scripts Last update: 'Mon, 04 Oct 2021 15:21:19 GMT'
--------------------
Total lists '1' withs scripts: '11'
```

### list

#### main

```
./TSM List
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   ID   |      Name      |     version      |    Category    |                    Descripstion                    |         Repo         |   STATUS   |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   1    |     woobie     |       1.1        |      test      |               woobie script for test               | ZarTek public Scr.. |    I U     |
|   2    |   mceggdrop    |     1.00.30      |      FiSH      |          Mircryption (FiSH) for eggdrop.           | ZarTek public Scr.. |     I      |
|   3    |  Youtube-Link  |      2.6.2       |      API       | This script retrieves information about Youtube .. | ZarTek public Scr.. |     I      |
|   4    |   PROXYCHECK   |   1.1.20210521   |    Services    |              Check Proxxy on connect               | ZarTek public Scr.. |     A      |
|   5    |    EvaServ     |      1.5RC       |    Services    |                  Services IRC Eva                  | ZarTek public Scr.. |     A      |
|   6    | DictionaryAPI  |      1.2.4       |      API       | That uses Dictionary v2 API to find and get word.. | ZarTek public Scr.. |     A      |
|   7    |  IRCServices   |      0.0.4       |    Packages    | Create an interface in TCL and the connection of.. | ZarTek public Scr.. |     A      |
|   8    |   ClaraServ    |   1.1.20210404   |    Services    |  Trade show animation, Network help, User profile  | ZarTek public Scr.. |     A      |
|   9    |     MOCKS      |       1.0        |     Tools      | Manage 'My Own soCKs Server' with eggdrop bot ( .. | ZarTek public Scr.. |     A      |
|   10   | BYPASS-WHO-B.. |       1.0        |     Tools      | This script allows created false user responses .. | ZarTek public Scr.. |     A      |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*------------*
|           Help: ./TSM List -help           |               Category: all                |                         Limit: 10                          |
*--------------------------------------------*--------------------------------------------*------------------------------------------------------------*
* For more information on a script: ./TSM show <ID|Name>
```

#### help

```
└> ./TSM List -help
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
TSM List [options] <search_string> ...
options:
 -l value             set the limit to show <10>
 -c value             set category to find <all>
 --                   Forcibly stop option processing
 -help                Print this message
 -?                   Print this message
```

#### search

```
 └> ./TSM list -c Services -l 2 serv
 Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   ID   |      Name      |     version      |    Category    |                    Descripstion                    |         Repo         |   STATUS   |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   5    |    EvaServ     |      1.5RC       |    Services    |                  Services IRC Eva                  | ZarTek public Scr.. |     A      |
|   8    |   ClaraServ    |   1.1.20210404   |    Services    |  Trade show animation, Network help, User profile  | ZarTek public Scr.. |     A      |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*------------*
|           Help: ./TSM List -help           |             Category: Services             |                          Limit: 2                          |
*--------------------------------------------*--------------------------------------------*------------------------------------------------------------*
* For more information on a script: ./TSM show <ID|Name>
```

### show

```
└> ./TSM show 4
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------

****** SOURCE INFORMATIONS ******

             NAME             : ZarTek public Scripts List
             DATE             : Mon, 04 Oct 2021 15:21:19 GMT
           CONTACT            : github.com/ZarTek-Creole

****** SCRIPT INFORMATIONS ******

              ID              : 4
             NAME             : PROXYCHECK
           VERSION            : 1.1.20210521
           CATEGORY           : Services
         DESCRIPTION          : Check Proxxy on connect
            AUTHOR            : ZarTek
           GIT URL            : github.com/ZarTek-Creole/TCL-PROXYCHECK
         GIT REVISION         : main
       TROUBLESHOOTING        : github.com/ZarTek-Creole/TCL-PROXYCHECK/issues/new
 Minimum version for Eggdrop  : null
   Minimum version for TCL    : null

****** Packages Required ******

         IRCServices          : 0.0.1
           sqlite3            : null
             http             : null
             json             : null
             dns              : null
              ip              : null
             tls              : null

****** post-installation INFORMATIONS ******

      Read instruction on: github.com/ZarTek-Creole/TCL-PROXYCHECK/blob/main/README.md

*********************************




└> ./TSM show ClaraServ 
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------

****** SOURCE INFORMATIONS ******

             NAME             : ZarTek public Scripts List
             DATE             : Mon, 04 Oct 2021 15:21:19 GMT
           CONTACT            : github.com/ZarTek-Creole

****** SCRIPT INFORMATIONS ******

              ID              : 8
             NAME             : ClaraServ
           VERSION            : 1.1.20210404
           CATEGORY           : Services
         DESCRIPTION          : Trade show animation, Network help, User profile
            AUTHOR            : ZarTek
           GIT URL            : github.com/ZarTek-Creole/TCL-ClaraServ
         GIT REVISION         : main
       TROUBLESHOOTING        : github.com/ZarTek-Creole/TCL-ClaraServ/issues/new
 Minimum version for Eggdrop  : null
   Minimum version for TCL    : null

****** Packages Required ******

         IRCServices          : 0.0.1

****** post-installation INFORMATIONS ******

      Read instruction on: github.com/ZarTek-Creole/TCL-ClaraServ/blob/main/README.md

*********************************
```

### GenDateNow

```
└> ./TSM GenDateNow
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
Wed, 20 Oct 2021 21:54:13 GMT
```

### Search

```
└> ./TSM Search fish
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   ID   |      Name      |     version      |    Category    |                    Descripstion                    |         Repo         |   STATUS   |
*--------*----------------*------------------*----------------*----------------------------------------------------*----------------------*------------*
|   2    |   mceggdrop    |     1.00.30      |      FiSH      |          Mircryption (FiSH) for eggdrop.           | ZarTek public Scr.. |     I      |
*--------*----------------*------------------*----------------*---------------------------*------------------------*----------------------*------------*
|           Help: ./TSM List -help           |               Category: all                |                         Limit: 10                          |
*--------------------------------------------*--------------------------------------------*------------------------------------------------------------*
* For more information on a script: ./TSM show <ID|Name>
```

### Install

```
└> ./TSM install 1                                                           
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
Changing the current directory to '/home/eggdrop/scripts'.
Get script source from 'https://github.com/astrorigin/woobie.tcl' into '/home/eggdrop/scripts/woobie'.
Cloning into 'woobie'...
remote: Enumerating objects: 11, done.
remote: Counting objects: 100% (11/11), done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 11 (delta 1), reused 11 (delta 1), pack-reused 0
Receiving objects: 100% (11/11), done.
Resolving deltas: 100% (1/1), done.
Changing the current directory to 'woobie'.
From https://github.com/astrorigin/woobie.tcl
 * branch            master     -> FETCH_HEAD
Already on 'master'
back to the directory '/home/eggdrop/scripts'
back to the directory '/home/eggdrop/'
Commit: 77c4278e03cb82b142e1467b02bfa6d6efcaf2de




└> ./TSM install 1
Reading Config file from '/home/eggdrop/TSM.cfg'...
  _____ ___ __  __ 
 |_   _/ __|  \/  |
   | | \__ \ |\/| |
   |_| |___/_|  |_|
-TCL-SCRIPT-MANAGER-
Eggdrop    : 1.9.1 (/home/eggdrop/scripts)
TCL        : 8.6
--------------------
Changing the current directory to '/home/eggdrop/scripts'.
The directory '/home/eggdrop/scripts/woobie' already exists!
Remove it or use ./TSM update woobie !


```

#
