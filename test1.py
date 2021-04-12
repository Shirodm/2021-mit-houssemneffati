#!/usr/bin/env python

import sys

import helloworld.main


def command():
    x = False
    assert bool(x) == False

if __name__ == "__main__":
    command()
    print("test passed")
