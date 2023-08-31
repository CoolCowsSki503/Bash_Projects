#!/bin/bash
#Author: Anthony Kulikowski
#Date: 08/29/2023
#This script will present the user with several options pertaining \
#to character creation.

# v1.0

selection () {
clear
echo "$name, please select a class from the list below:"

echo -e "\nWarrior\n\tHealth = 20\n\tStrength = 8\n\tMana = 2"

echo -e "\nWizard\n\tHealth = 10\n\tStrength = 3\n\tMana = 12"

echo -e "\nRogue\n\tHealth = 12\n\tStrength = 5\n\tMana = 6"

read classchoose

case $classchoose in
Warrior)
  echo You have chosen the $classchoose class! ;;
Wizard)
  echo You have chosen the $classchoose class! ;;
Rogue)
  echo You have chosen the $classchoose class! ;;
*)
  echo You have not chosen a valid class ;;
esac
}


echo "Welcome to Fabled Heroes. Please enter your name."

name=''

while [[ -z $name ]]
do
echo -n "Name: " 
read name
if [[ -z $name ]]
  then
    echo "Please do not leave your name blank."
    continue
fi
echo "$name. Is this correct?"
read answer
if [[ $answer == @("Y"|"y"|"Yes"|"yes") ]]
  then
    echo "Perfect!"
  else
    name=''
    continue
fi
done

accept=''

while [[ $accept != "1" ]]
do
  selection
  if [[ $classchoose != @("Rogue"|"Wizard"|"Warrior") ]]
  then
    clear
    continue
  fi
  echo "Is this correct?"
  read answer
  case $answer in
    Yes|yes|Y|y)
      accept=1 ;;
    No|no|N|n)
      continue
esac
done

echo "Then, $name the $classchoose is ready to set out on an adventure!"
