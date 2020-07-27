#!/bin/zsh

cd $ROOTBEER
$ROOTSYS/bin/root -l -q .x /mnt/home/elchorco/Documentos/TESIS/Codigo/IVAN_ROOTBEER/Tesis/macro/Macro.C
printf '//--------------------->\n//--------------------->\n//---------------------> \n'
printf '%s' '//---------------------> Do you wish continue? [y,n]: '
read ans
if [[ "$ans" =~ "n" ]]; then
    exit 1
fi
rehash
cd /mnt/home/elchorco/Documentos/TESIS/Codigo/IVAN_ROOTBEER/Tesis/Analysis/pos2neg1_skim/
rbtest -Lfile.dat test.root
$ROOTSYS/bin/root -l
cd $ROOTBEER
