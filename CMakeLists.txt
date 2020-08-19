## CMakeLists.txt

CMAKE_MINIMUM_REQUIRED(VERSION 3.4) ##REVIEW: What is the very minimum that will work? 
PROJECT(DigitalKnob) ##REVIEW: Is this only required to keep CMake from complaining?

## User can load the first DK.cmake file from any location. I.E.  C:/DKTestMyRoot/DKCMake/Go.cmake
INCLUDE(DKCMake/DK2.cmake)  ##REVIEW: Is this the best name for the default core cmake file? Should it be MAIN.cmake or something?
