#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2024 me.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#


import numpy
from gnuradio import gr

class qpsk_demod_py_cb(gr.sync_block):
    """
    docstring for block gpsk_demod_py_cb
    """
    def __init__(self, gray_code):
        gr.sync_block.__init__(self,
            name="gpsk_demod_py",
            in_sig=[numpy.complex64],
            out_sig=[numpy.uint8])
        self.gray_code = gray_code

    def get_minimum_distances(self, sample):
        if self.gray_code == 1:
            if (sample.imag >= 0 and sample.real >= 0):
                return 0 # 1+1j
            elif (sample.imag >= 0 and sample.real < 0):
                return 2 # -1+1j
            elif (sample.imag < 0 and sample.real < 0):
                return 3 # -1-1j
            elif (sample.imag < 0 and sample.real >= 0):
                return 1 # 1-1j
        else: 
            if (sample.imag >= 0 and sample.real >= 0):
                return 0 # 1+1j
            elif (sample.imag >= 0 and sample.real < 0):
                return 3 # -1+1j
            elif (sample.imag < 0 and sample.real < 0):
                return 2 # -1-1j
            elif (sample.imag < 0 and sample.real >= 0):
                return 1 # 1-1j

    def work(self, input_items, output_items):
        in0 = input_items[0]
        out = output_items[0]

        for i in range(0, len(in0)):
            sample = in0[i]
            out[i] = self.get_minimum_distances(sample)

        return len(output_items[0])
