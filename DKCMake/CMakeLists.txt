## ALL DK2 projects are build from here.

## Set CMake's source code location to this directory.    I.E.  C:/DK2/DKCMake
## Set Cmake's build binaries location to the appropriate app output location.  I.E.  C:/DK2/DKApps/MyApp/win32  

CMAKE_MINIMUM_REQUIRED(VERSION 3.4) #TODO: What is the very minimum that will work? 
PROJECT(DK2) #TODO: Is this only required to keep CMake from complaining?
INCLUDE(DKInit.cmake)
INCLUDE(DKFuncs.cmake)
INCLUDE(DKPaths.cmake)