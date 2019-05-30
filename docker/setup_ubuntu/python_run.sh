#!/bin/sh

docker run --rm \
    -v $(pwd):/dir \
    ubuntu_dev
    python3 sample.py

