#### DK2.cmake ####

MESSAGE("##########################")
MESSAGE("###  DK2 Build System  ###")
MESSAGE("##########################")

IF(COMMAND cmake_policy)
	CMAKE_POLICY(SET CMP0003 NEW) #https://cmake.org/cmake/help/v3.0/policy/CMP0003.html
ENDIF(COMMAND cmake_policy)