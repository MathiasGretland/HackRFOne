find_package(PkgConfig)

PKG_CHECK_MODULES(PC_GR_TUTORIAL gnuradio-tutorial)

FIND_PATH(
    GR_TUTORIAL_INCLUDE_DIRS
    NAMES gnuradio/tutorial/api.h
    HINTS $ENV{TUTORIAL_DIR}/include
        ${PC_TUTORIAL_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    GR_TUTORIAL_LIBRARIES
    NAMES gnuradio-tutorial
    HINTS $ENV{TUTORIAL_DIR}/lib
        ${PC_TUTORIAL_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/gnuradio-tutorialTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GR_TUTORIAL DEFAULT_MSG GR_TUTORIAL_LIBRARIES GR_TUTORIAL_INCLUDE_DIRS)
MARK_AS_ADVANCED(GR_TUTORIAL_LIBRARIES GR_TUTORIAL_INCLUDE_DIRS)
