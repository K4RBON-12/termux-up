#!/bin/bash

pkg update -y
pkg upgrade -y

while true; do
    clear
    echo "Select the desired options:"
    echo "0. Customize shell"
    echo "1. git"
    echo "2. wget"
    echo "3. python"
    echo "4. android-tools"
    echo "5. curl"
    echo "6. zip"
    echo "7. unzip"
    echo "8. Clear motd"
    echo "9. Install all packages"
    echo "10. Exit"
    read -p "Enter the option number: " option

    case $option in
        0)
            echo "Customizing shell"
            mv -rf bash.backup /data/data/com.termux/files/home/.bashrc
            mkdir .garbage
            source ~/.bashrc
            ;;
        1)
            echo "Installing git..."
            pkg install git -y
            ;;
        2)
            echo "Installing wget..."
            pkg install wget -y
            ;;
        3)
            echo "Installing python..."
            pkg install python -y
            ;;
        4)
            echo "Installing android-tools..."
            pkg install android-tools -y
            ;;
        5)
            echo "Installing curl..."
            pkg install curl -y
            ;;
        6)
            echo "Installing zip..."
            pkg install zip -y
            ;;
        7)
            echo "Installing unzip..."
            pkg install unzip -y
            ;;
        8)
            echo "Cleaning motd..."
            rm /data/data/com.termux/files/usr/etc/motd
            touch /data/data/com.termux/files/usr/etc/motd
            echo "Motd cleaned successfully."
            ;;
        9)
            echo "Installing all packages..."
            pkg install git wget python android-tools curl zip unzip -y
            ;;
        10)
            echo "Exiting..."
            clear
            exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac

    read -n1 -r -p "Press any key to continue..."
done

echo "Done."
