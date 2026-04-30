#!/bin/bash

# Themes Helper v. 1.00. Coded by BrokenSideViewMirror, released under the MIT license in the themes-lair repository.

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Themes Helper v. 1.00${normal}"
echo -e "\nThemes Helper is the tool to help do various utilities in your system."
echo -e "\n${bold}Coded by BrokenSideViewMirror.${normal}\n"
read -p "To initialize a directory and add template files, press ${bold}1${normal}. To just download a template, press ${bold}2${normal}." menuprompt

if [[ "$menuprompt" == "1" ]]; then
  read -p "What do you want to name the new directory?" option
  if [[ -z "$option" ]]; then
    echo "${bold}ERROR:${normal} The directory you specified is invalid. Was your specification a null value?"
    exit 1
  fi
  # Note that we're using a placeholder, which we'll fix with a mv command.
  echo "Initializing the directory..."
  mkdir -p themes/newtheme
  echo "Initialized!"
  echo -e "\nDownloading the latest template files from the official kitty-themes repository..."
  curl -s --no-verbose https://raw.githubusercontent.com/kovidgoyal/kitty-themes/refs/heads/master/template.conf > themes/newtheme/theme-light.conf
  echo "Done!"
  echo -e "\nCopying files..."
  cp themes/newtheme/theme-light.conf themes/newtheme/theme-dark.conf
  echo "Done!"
  echo -e "\nRenaming placeholder directory..."
  mv themes/newtheme themes/${option}
  echo "Done!"
  echo -e "\nThe directory has been initialized. It is encouraged to check it for errors."
elif [[ "$menuprompt" == "2" ]]; then
  echo "Making sure that the themes directory is created..."
  mkdir themes
  echo "Done!"
  echo -e "\nDownloading the latest files from the official kitty-themes repository..."
  curl -s --no-verbose https://raw.githubusercontent.com/kovidgoyal/kitty-themes/refs/heads/master/template.conf > themes/template.conf
  echo "Done! Please check the themes directory to find the template file!"
else
  echo "${bold}Invalid option. Have you tried selecting 1 or 2?${normal}"
  exit 1
fi
echo -e "\n${bold}Operation finished.${normal}"
