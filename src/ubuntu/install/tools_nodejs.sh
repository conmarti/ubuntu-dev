#!/bin/bash
#
# 
#

### Install Visual Code from Microsoft
### TODO Check the install -f and clean steps
function install_vs_code {

    echo "Install Visual Code Editor"

    wget http://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
    dpkg --configure -a
    
    echo "install libs first"
    apt-get update
    apt-get install -y libnotify4 libnss3 libxkbfile1 libgconf-2-4 libsecret-1-0 
    apt-get install -f
    
    echo "now install vscode"
    dpkg -i vscode.deb
    
    apt-get install -f
    
    apt-get clean -y
}

### Install nodejs
function install_nodejs {
    echo "Install nodejs Version 6"

    apt-get update
    curl -sL https://deb.nodesource.com/setup_6.x | bash -
    apt-get install -y nodejs
    apt-get install -y build-essential
    apt-get clean -y

}

if [ "$#" -lt  "2" ] || [ "$#" -gt "2" ]
   then
    echo "$0 -install [true|false]"
 else

    while [[ $# > 1 ]]
    do
        key="$1"

        case $key in
            -i|--install)
            INSTALL="$2"
            shift # past argument
            ;;
            *)
             # unknown option
            ;;
        esac
        shift # past argument or value
    done

    if [ "$INSTALL" = true ] || [ "$INSTALL" = TRUE ] ||  [ "$INSTALL" = True ]
    then
        install_vs_code
        install_nodejs
    fi

fi



