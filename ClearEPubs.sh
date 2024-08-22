#!/bin/bash

#A script I made to clear certain added pages to certain ePubs I own
#You will need to have zip installed for this

#This puts the results of the find command into an array
mapfile -t FileList < <(find "$PWD" -type f -name "*.epub")

for File in "${FileList[@]}"
do
    #This check for 3 different files and deletes them.
    #I am too lazy to figure out how to modify indivual files to clear the mentions of them
    #But in my testing of Okular and KOReader, it doesn't seem to matter.
    zip --delete "$File" OEBPS/Text/jnovels.xhtml OEBPS/Images/1.png OEBPS/Text/jln.xhtml
done