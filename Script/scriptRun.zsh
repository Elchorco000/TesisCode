#!/bin/zsh

FILE=$(pwd)
#######################################
cd ../../Analysis/pos2neg1_skim/         #
FILEDATA=$(pwd)                       # #Define directory of DATA
cd $ROOTBEER                          #
#######################################

$ROOTSYS/bin/root -l -q $FILE/Macro.C   #Run root and execute Macro.C
rehash
printf '//--------------------->\n//--------------------->\n//---------------------> \n'
printf '%s' '//---------------------> Do you want continue? [y,n]: '
read ans
if [[ "$ans" =~ "n" ]]; then
    exit 1
fi                                
cd $FILEDATA                            #Open File that has the data .root's
pos2neg1 -Lfile.dat test.root           #Could you run one file .root or a file of list of a lot of .root's
$ROOTSYS/bin/root -l                    #Run ROOT
cd $FILE
