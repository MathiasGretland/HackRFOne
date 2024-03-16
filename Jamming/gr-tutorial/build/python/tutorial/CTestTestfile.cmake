# CMake generated Testfile for 
# Source directory: /home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial
# Build directory: /home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(qa_multiply_py_ff "/usr/bin/sh" "qa_multiply_py_ff_test.sh")
set_tests_properties(qa_multiply_py_ff PROPERTIES  _BACKTRACE_TRIPLES "/usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrTest.cmake;119;add_test;/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial/CMakeLists.txt;42;GR_ADD_TEST;/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial/CMakeLists.txt;0;")
subdirs("bindings")
