#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2024 multiple.
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

from gnuradio import gr, gr_unittest
from gnuradio import blocks
# from gnuradio import blocks
from multiply_py_ff import multiply_py_ff

class qa_multiply_py_ff(gr_unittest.TestCase):

    def setUp(self):
        self.tb = gr.top_block()

    def tearDown(self):
        self.tb = None

    #def test_instance(self):
        # FIXME: Test will fail until you pass sensible arguments to the constructor
     #   instance = multiply_py_ff()

    def test_001_descriptive_test_name(self):
        # set up fg
        src_data = (0, 1, -2, 5.5, -0.5)
        expected_result = (0, 2, -4, 11, -1)
        src = blocks.vector_source_f(src_data)
        mult = multiply_py_ff(2)
        snk = blocks.vector_sink_f()
        self.tb.connect(src, mult)
        self.tb.connect(mult, snk)
        self.tb.run()
        result_data = snk.data()
        self.assertFloatTuplesAlmostEqual(expected_result, result_data, 6)
        # check data


if __name__ == '__main__':
    gr_unittest.run(qa_multiply_py_ff)
