# Install script for directory: /home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/tutorial" TYPE FILE FILES
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial/__init__.py"
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial/multiply_py_ff.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.11/dist-packages/gnuradio/tutorial" TYPE FILE FILES
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial/__init__.pyc"
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial/multiply_py_ff.pyc"
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial/__init__.pyo"
    "/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial/multiply_py_ff.pyo"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial/bindings/cmake_install.cmake")

endif()

