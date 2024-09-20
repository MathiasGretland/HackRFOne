#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2024 me.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

from gnuradio import gr, gr_unittest
from gnuradio import blocks
from qpsk_demod_py_cb import qpsk_demod_py_cb

class qa_gpsk_demod_py_cb(gr_unittest.TestCase):

    def setUp(self):
        self.tb = gr.top_block()

    def tearDown(self):
        self.tb = None

    #def test_instance(self):
        # FIXME: Test will fail until you pass sensible arguments to the constructor
        #instance = gpsk_demod_py_cb()

    def test_001_t (self):
        gray_code = False
        src_data = ((-1-1j), (-1+1j), (1+1j), (1-1j))
        expected_result = (2, 3, 0, 1)
        src = blocks.vector_source_c(src_data)
        qpsk = qpsk_demod_py_cb(gray_code)
        dst = blocks.vector_sink_b()
        self.tb.connect(src, qpsk)
        self.tb.connect(qpsk, dst)
        self.tb.run()
        result_data = dst.data()
        self.assertFloatTuplesAlmostEqual(expected_result, result_data, 6)

    def test_002_t (self):
        gray_code = True
        src_data = ((-1-1j), (-1+1j), (1+1j), (1-1j))
        expected_result = (3, 2, 0, 1)
        src = blocks.vector_source_c (src_data)
        qpsk = qpsk_demod_py_cb (gray_code)
        dst = blocks.vector_sink_b ()
        self.tb.connect (src, qpsk)
        self.tb.connect (qpsk, dst)
        self.tb.run ()
        result_data = dst.data ()
        self.assertFloatTuplesAlmostEqual (expected_result, result_data, 6)

if __name__ == '__main__':
    gr_unittest.run(qa_gpsk_demod_py_cb)
