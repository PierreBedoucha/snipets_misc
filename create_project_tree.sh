#!/bin/bash

echo "Package and distribution management" > setup.py
echo "Requirements dependencies: specify the dependencies required to contribute to the project: testing, building, and generating documentation" > requirements.txt
mkdir data
mkdir data/input
mkdir data/output
mkdir docs
echo "Package reference documentation" > docs/conf.py
echo "Package reference documentation" > docs/index.rst
mkdir sample
echo "insert text here" > sample/__init__.py
echo "insert text here" > sample/core.py
echo "insert text here" > sample/helpers.py 
mkdir tests
echo "Package integration and unit tests. from .context import sample" > tests/test_basic.py
echo "Package integration and unit tests. from .context import sample" > tests/test_advanced.py

cat >tests/context.py <<EOL
line 1, import os
line 2, import sys
line 3, sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
line 4,
line 5, import sample 
EOL

cat >Makefile <<EOL
line 1, init:
line 2,     pip install -r requirements.txt
line 3,
line 4, test:
line 5,     py.test tests
line 6,
line 7, .PHONY: init test
EOL

