#!/bin/bash

pkg update -y
pkg upgrade -y

while true; do
    clear
    echo "Select the desired options:"
    echo "1. Customize shell"
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
        1)
            echo "Customizing shell"
            cp -f .bashrc /data/data/com.termux/files/home/
            mkdir /data/data/com.termux/files/home/.garbage
            cp -f font.ttf /data/data/com.termux/files/home/.termux/
            pkg install lsd -y
            termux-setup-storage
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
            pkg install wget -y
            pkg install python -y
            pkg install android-tools -y
            pkg install curl -y
            pkg install unzip -y
            pkg install zip -y
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
