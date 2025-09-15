"""tests
"""
# import sys
# import os
# sys.path.append(os.getcwd())
# import pytest
# pylint: disable=import-error, wrong-import-position
from greeting.main import greet  # noqa
from greeting.utils import add, sub # noqa


def test_greet():
    """test 1
    """
    assert greet("World") == "Hello, World!"


def test_add():
    """test 2
    """
    assert add(5, 7) == 12


def test_sub():
    """test 3
    """
    assert sub(69, 32) == 37
