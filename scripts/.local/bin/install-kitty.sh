#!/usr/bin/env bash

if [ ! -x ~/.local/bin/kitty ]; then
  mkdir -p ~/.local/share/applications
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  # Create a symbolic link to add kitty to PATH (assuming ~/.local/bin is in
  # your system-wide PATH)
  ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
  # Place the kitty.desktop file somewhere it can be found by the OS
  cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
  # If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
  # cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
  # Update the paths to the kitty and its icon in the kitty.desktop file(s)
  sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
  sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
else
  echo "Kitty already installed at ~/.local/bin/kitty"
fi

