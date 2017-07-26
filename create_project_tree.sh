#!/bin/sh

mkdir data
mkdir docs  && touch docs/conf.py && touch docs/index.rst
mkdir sample
touch sample/__init__.py
touch sample/core.py
touch sample/helpers.py 
mkdir tests  && touch tests/test_basic.py && touch tests/test_advanced.py

