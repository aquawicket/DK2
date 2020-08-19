## ALL DK2 projects are build from here.

## Set this directory to CMake's source code location    I.E. C:/DK2
## Set Cmake's build binaries location to the appropriate app output location.  C:/DK2/DKApps/MyApp/win32  

CMAKE_MINIMUM_REQUIRED(VERSION 3.4) #XXX: What is the very minimum that will work? 
PROJECT(DK2) #XXX: Is this only required to keep CMake from complaining?
INCLUDE(DKCMake/DK2.cmake) #XXX: Should this be named DK2BUILD.cmake or something else?
