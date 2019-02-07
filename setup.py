#!/usr/bin/env python
"""
setup.py file """
from distutils.core import setup, Extension
import numpy as np    

example_module = Extension('_polyclip',
sources=['polyclip_c_wrap.c', 'polyclip_c.c'],
)
setup (name = 'polyclip', version = '0.1',
author = "N. Pirzkal",
description = """Swig wrapper of polyclip.c from J.D. Smith""", 
include_dirs = [np.get_include()], 
ext_modules = [example_module],
py_modules = ["polyclip"],
)
