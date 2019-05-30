#!/bin/sh

docker run --rm \
    -v $(pwd):/dir \
    python_dev
    python3 sample.py

