#!/bin/bash
sed -i src/cloghandler.py -re "s/^__version__.*/__version__ = ''/"
