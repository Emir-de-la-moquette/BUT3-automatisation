"""tests
"""
import sys
import os
# import pytest
sys.path.append(os.getcwd())
# pylint: disable=import-error, wrong-import-position
from src.greeting.main import greet  # noqa
from src.greeting.utils import add, sub # noqa


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
