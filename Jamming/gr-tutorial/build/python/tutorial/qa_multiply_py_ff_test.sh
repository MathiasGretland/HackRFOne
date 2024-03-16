#!/usr/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir=/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/python/tutorial":"$PATH"
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/build/test_modules:$PYTHONPATH
/usr/bin/python3 /home/mathige/Documents/HackRFOne/Jamming/gr-tutorial/python/tutorial/qa_multiply_py_ff.py 
