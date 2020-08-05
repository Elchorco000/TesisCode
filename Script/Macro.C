
#include "TROOT.h"

void Macro(){

  gROOT->ProcessLine(".x /path/rootbeer/rootbeer2.2/RootBeerSetup.cxx");
  
  string MKEXE("mkexe(\"/home/elchorco/Documentos/TESIS/Codigo/IVAN_ROOTBEER/Tesis/macro/Script/pos2neg1.C\",\"\")"); //Directory of *pos2neg1.C*
  gROOT->ProcessLine(MKEXE.c_str());
  //mkexe("/home/elchorco/Documentos/TESIS/Codigo/IVAN_ROOTBEER/Tesis/macro/pos2neg1.C","");  //Directory of *pos2neg1.C*
 }
