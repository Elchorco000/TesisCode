#!/bin/zsh
#setup rootbeer environment
#export ROOTBEER=$HOME/.programas/rootbeer2.2/rootbeer2.2

if [[ ! (-d ${ROOTBEER}) ]]; then
   echo Error: '$ROOTBEER' must be defined for rootbeer
   exit
fi


export ROOTBEER_SCRIPTS=${ROOTBEER}/scripts

#workout the osname
export OSCLAS=LinuxRHFC8
export OS_NAME=LinuxRHFC8
#export OSCLAS=${ROOTBEER_SCRIPTS}/RootBeerUname
#export OS_NAME=${ROOTBEER_SCRIPTS}/RootBeerUname

export ROOTBEER_LIB=$ROOTBEER/lib/${OS_NAME}
export ROOTBEER_SLIB=$ROOTBEER/slib/${OS_NAME}
export ROOTBEER_BIN=$ROOTBEER/bin/${OS_NAME}
export ROOTBEER_OBJ=$ROOTBEER/obj/${OS_NAME}

#echo $ROOTBEER_LIB
#make directories if they don't exist

if [[ ! (-f $ROOTBEER_LIB) ]]; then 
   mkdir -p $ROOTBEER_LIB
fi
if [[ ! (-f $ROOTBEER_SLIB) ]]; then 
   mkdir -p $ROOTBEER_SLIB
fi
if [[ ! (-f $ROOTBEER_BIN) ]]; then  
   mkdir -p $ROOTBEER_BIN
fi 
if [[ ! (-f $ROOTBEER_OBJ) ]]; then 
   mkdir -p $ROOTBEER_OBJ
fi

export PATH=${PATH}:${ROOTBEER_BIN}

if [[ ! (-f $LD_LIBRARY_PATH) ]]; then
   export LD_LIBRARY_PATH=${ROOTBEER_SLIB}:${LD_LIBRARY_PATH}
else
      export LD_LIBRARY_PATH=${ROOTBEER_SLIB}
fi

alias rootbeer="cd $ROOTBEER;root -l RootBeerSetup.cxx"
