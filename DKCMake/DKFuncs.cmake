#### DKFuncs.cmake ####

########################
FUNCTION(DKSET arg arg2)
	SET(extra_args ${ARGN})
	LIST(LENGTH extra_args num_extra_args)
	IF(${num_extra_args} GREATER 0)
		LIST(GET extra_args 0 arg3)
		SET(${arg} ${arg2} ${extra_args} CACHE INTERNAL "")
	ELSE()
		SET(${arg} ${arg2} CACHE INTERNAL "")
	ENDIF()
ENDFUNCTION()