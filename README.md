# DK2
DK2 - DigitalKnob rebuilt from the bottom up.

#1 - The Directory Structure
      We should have the least amount of restriction, and most amount of freedom, to easly move, add, and rename any DK2 folders.
      The only constant will be a root DK2 folder. This is where we hold any information. DK/CMakeLists.txt is our root file.
      
      1. DK2/CMakeLists.txt
         As Cmake runs CMakeLists.txt, it will set DKROOT to the current path.   Example: DKROOT = C:/DK2
         Now that CMakeLists.txt knows where DKROOT is, we can begin to run any CMake code and build. 
         
         *Default folders will be assigned to cmake vairables*
         DK3RDPARTY = DKROOT/DK3rdParty  "optional"
         DKAPPS = DKROOT/DKApps "optional"
         DKCMAKE = DKRoot/DKCMake "required"
         DKDOCS = DKRoot/DKCMake "optional"
         DKDOWNLOADS = DKRoot/DKDownloads "optional/generated"
         DKPLUGINS = DKROOT/DKPlugins "optional"
         
         *Thoughts*
         This poses the issue that if we have a DK3 path, with no DKPlugins, we can't build a DK app, yet if we tell it DKPLUGINS = DK2/DKPlugins, DK3 will in effect take on the DK2 plugins folder. This means we need to have a main root for DK2. But this also means we are giving DK3 it's own CMakeLists.txt powers. There should only ever be 1 CMakeLists.txt file to rule them all. This means that CMake can only ever run DK from the root.
         

     
