#### DKPaths.cmake ####

MESSAGE("Setting up paths...")
GET_FILENAME_COMPONENT(DKROOT "${CMAKE_SOURCE_DIR}/../" ABSOLUTE)
MESSAGE("DKROOT: ${DKROOT}")
DKSET(DKCMAKE ${DKROOT}/DKCMake)
MESSAGE("DKCMAKE: ${DKCMAKE}")
DKSET(DKPLUGINS ${DKROOT}/DKPlugins)
MESSAGE("DKPLUGINS: ${DKPLUGINS}")
DKSET(DK3RDPARTY ${DKROOT}/3rdParty)
MESSAGE("DK3RDPARTY: ${DK3RDPARTY}")
DKSET(DKIMPORTS ${DK3RDPARTY}/_DKIMPORTS)
MESSAGE("DKIMPORTS: ${DKIMPORTS}")
DKSET(DKDOWNLOAD ${DKROOT}/Download)
MESSAGE("DKDOWNLOAD: ${DKDOWNLOAD}")
DKSET(DKWEB http://127.0.0.1)
MESSAGE("DKWEB: ${DKWEB}")