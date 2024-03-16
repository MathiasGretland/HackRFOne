#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2024 multiple.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#


import numpy
from gnuradio import gr

class multiply_py_ff(gr.sync_block):
    """
    docstring for block multiply_py_ff
    """
    def __init__(self, multiple):
        gr.sync_block.__init__(self,
            name="multiply_py_ff",
            in_sig=[numpy.float32],
            out_sig=[numpy.float32])
        self.multiple = multiple


    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]
        # <+signal processing here+>
        out[:] = in0*self.multiple
        return len(output_items[0])
