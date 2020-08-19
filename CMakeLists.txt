## CMakeLists.txt

CMAKE_MINIMUM_REQUIRED(VERSION 3.4) ##REVIEW: What is the very minimum that will work? 
PROJECT(DigitalKnob) ##REVIEW: Is this only required to keep CMake from complaining?

## THOUGHTS ##
## First, we must run DKPaths, where is it?  We have to set the DKCMAKE path.
## We might as well find the first DKCMake folder and call an init file of some sort.
## This will let the user call the first DK.cmake file from any location. I.E.  C:/DKTestMyRoot/DKCMake/Go.cmake
INCLUDE(DKCMake/PROCESS.cmake)  ##REVIEW: Is this the best name for the default core cmake file? Should it be MAIN.cmake or something?
