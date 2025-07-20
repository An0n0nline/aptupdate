#!/bin/bash
clear;
echo;
echo -n "///// "; echo -n "SYSTEM UPDATES/FIXES "; echo "///// ";
echo -n "= = = "; echo -n "REMEMBER TO RUN AS ROOT "; echo "= = = ";
echo;
echo "==========MAKE A SELECTION==========";
echo "(1) UPDATE";
echo "(2) UPGRADE";
echo "(3) UPDATE & UPGRADE";
echo "(4) DISTRO UPGRADE";
echo "(5) FULL UPGRADE";
echo "(6) SHOW HELD PACKAGES";
echo "(7) UPGRADE WITH NEW PACKAGES (HELD)";
echo "(8) FIX MISSING";
echo "(9) AUTOREMOVE";
echo "(10) FIX BROKEN INSTALL";
echo "(11) AUTOCLEAN";
echo "(12) UPDATE, UPGRADE, FIX MISSING, AUTOREMOVE, AUTOCLEAN, ETC";
echo "(13) PURGE APT";
echo "(14) CHECK SOURCES";
echo "(15) THROW A WRENCH AT THE BACKEND";
echo "(16) DIGITAL PERCUSSIVE MAINTENANCE";
echo "(17) RECONFIGURE DPKG";
echo "(18) LIST UPGRADABLE PACKAGES";  # New option to list packages that need upgrading
echo "(19) CLEAN PACKAGE CACHE";       # New option to clean apt-get cache
echo "(20) CLEAN UNUSED DEPENDENCIES"; # New option to clean unused dependencies
echo "(21) FIX APT OR DPKG CONFLICTS"; # New option to fix conflicts
echo;
read -p "ENTER SELECTION: " SELECTION1;
echo;

#====================================================UPDATE
if [ "$SELECTION1" = 1 ]
then
    sudo apt update;
fi

#====================================================UPGRADE
if [ "$SELECTION1" = 2 ]
then
    sudo apt upgrade;
fi

#====================================================UPDATE & UPGRADE
if [ "$SELECTION1" = 3 ]
then
    sudo apt update && sudo apt upgrade -y;
fi

#====================================================DISTRO UPGRADE
if [ "$SELECTION1" = 4 ]
then
    sudo apt dist-upgrade -y;
fi

#====================================================FULL UPGRADE
if [ "$SELECTION1" = 5 ]
then
    sudo apt full-upgrade -y;
fi

#====================================================SHOW HELD PACKAGES
if [ "$SELECTION1" = 6 ]
then
    echo "Current held packages:";
    sudo apt-mark showhold;
fi

#====================================================UPGRADE WITH NEW PACKAGES (HELD)
if [ "$SELECTION1" = 7 ]
then
    sudo apt-get --with-new-pkgs upgrade;
fi

#====================================================FIX MISSING
if [ "$SELECTION1" = 8 ]
then
    sudo apt update --fix-missing;
fi

#====================================================AUTOREMOVE
if [ "$SELECTION1" = 9 ]
then
    sudo apt autoremove -y;
fi

#====================================================FIX BROKEN INSTALL
if [ "$SELECTION1" = 10 ]
then
    sudo apt --fix-broken install;
fi

#====================================================AUTOCLEAN
if [ "$SELECTION1" = 11 ]
then
    sudo apt-get autoclean;
fi

#====================================================UPDATE & EVERYTHING
if [ "$SELECTION1" = 12 ]
then
    sudo apt update && sudo apt upgrade -y;
    sudo apt dist-upgrade -y;
    sudo apt --with-new-pkgs upgrade;
    sudo apt update --fix-missing;
    sudo apt autoremove -y;
    sudo apt-get autoclean;
fi

#====================================================PURGE APT
if [ "$SELECTION1" = 13 ]
then
    sudo apt purge needrestart -y;
fi

#====================================================CHECK SOURCES
if [ "$SELECTION1" = 14 ]
then
    echo ">>> /etc/apt/sources.list:";
    sudo cat /etc/apt/sources.list;
    echo ">>> /etc/apt/sources.list.d:";
    cd /etc/apt/sources.list.d && ls;
fi

#====================================================BACKEND MAINTENANCE
if [ "$SELECTION1" = 15 ]
then
    sudo apt install linux-source; mkdir ~/kernel; cd ~/kernel; sudo apt update && sudo apt upgrade -y;
fi

#====================================================PERCUSSIVE MAINTENANCE
if [ "$SELECTION1" = 16 ]
then
    sudo apt install linux-source build-essential automake cmake;
    sudo apt update && sudo apt upgrade -y;
fi

#====================================================RECONFIGURE DPKG
if [ "$SELECTION1" = 17 ]
then
    sudo dpkg --configure -a;
fi

#====================================================LIST UPGRADABLE PACKAGES
if [ "$SELECTION1" = 18 ]
then
    sudo apt list --upgradable;
fi

#====================================================CLEAN PACKAGE CACHE
if [ "$SELECTION1" = 19 ]
then
    sudo apt-get clean;
fi

#====================================================CLEAN UNUSED DEPENDENCIES
if [ "$SELECTION1" = 20 ]
then
    sudo apt-get autoremove --purge;
fi

#====================================================FIX APT OR DPKG CONFLICTS
if [ "$SELECTION1" = 21 ]
then
    sudo dpkg --configure -a;
    sudo apt --fix-broken install;
fi

#====================================================RETURN
echo;
read -p "WOULD YOU LIKE TO RETURN TO THE MENU? (y/n): " ANSWER;
if [ "$ANSWER" = y ]
then
    sudo bash update.sh;
fi
if [ "$ANSWER" = n ]
then
    echo;
fi
