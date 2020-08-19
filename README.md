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
         
         What if we can create a DKROOT web.
         I.E.   Let's say we run DK13/CmakeLists.txt but it has no DKPlugins folder, so it can't find DKPlugins/DKCore..   fail
         FIX:   We tell DK13 to add DK2/DKPlugins to the DKPLUGINS list, now we can find DKPlugins/DKCore. 
         I.E.   What if C:/DK5 has DKPlugins/DKCore and adds DK2/DKPlugins to the list, now we have 2 DKPlugins/DKCore folders..   fail 
         
         *Thoughts*
         It looks like CMakeLists.txt is dependent on DKPlugins/DKCore as well as DKCmake/DKPaths.txt to even prep a build. 
         
         *Thoughts*
         Q. If we have 2 identicle DKROOTS, C:/DK2 and C:/DK3, they will have their own sandboxed homes seperate from eachother
         Q. If we tell DK3 to add C:/DK2/DKPlugins to it's list, we now have 2 DKCore folders.. Which will take precidence?
         ANSWER: DK3/DKPlugins/DKCore is used first since it is local to CMakeLists.txt
         Q. If we delete the DKPlugins folder in DK3 and run it again, what should happen.
         ANSWER: DK2/DKPlugins/DKCore is used because DKPlugins is missing and the next DKPLUGINS in the list is used.
         Q. IF we keep DKPlugins in DK3 and only remove DKCore?
         ANSWER: DK2/DKPlugins/DKCore is used because DKCore is still missing from plugins and will trickle to the next on the list.
         Q. If DK2 thur DK10 all have DKPlugins/DKCore except DK6, and we run DK6, which DKCore will it choose.
         ANSWER. If DK2 thru DK10 folders are added to DKPLUGINS, the first in the list will be hit, DK2. If DK6 has DKCore, it uses local. 
         
         
         
         
         

     
