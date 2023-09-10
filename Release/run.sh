#!/bin/bash
MODULEPATH=""
ICON=""
if ls lib/javafx* 1> /dev/null 2>&1; then
    if [[ $OSTYPE == 'linux-gnu' ]]; then
        MODULEPATH=./lib/javafx-linux/lib
    fi
    if [[ $OSTYPE == 'darwin'* ]] && [[ $(arch) == 'i386' ]]; then
        MODULEPATH=./lib/javafx-osx-intel/lib
        ICON=-Xdock:icon=icons/iconOSX.png
    fi
    if [[ $OSTYPE == 'darwin'* ]] && [[ $(arch) == 'arm64' ]]; then
        MODULEPATH=./lib/javafx-osx-arm/lib
        ICON=-Xdock:icon=icons/iconOSX.png
    fi
    MODULEPATH="--module-path $MODULEPATH --add-modules javafx.controls,javafx.fxml"
fi
java  $ICON $MODULEPATH -cp "Project.jar:lib/json-20220924.jar:lib/slf4j-api-2.0.3.jar:lib/Java-WebSocket-1.5.3.jar:lib/slf4j-simple-2.0.3.jar" Main
