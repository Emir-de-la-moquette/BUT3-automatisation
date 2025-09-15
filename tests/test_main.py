import sys
import os
# import pytest
sys.path.append(os.getcwd())

from src.greeting.main import greet # pylint: disable=wrong-import-position
from src.greeting.utils import add # pylint: disable=wrong-import-position

def test_greet():
    """_summary_
    """
    assert greet("World") == "Hello, World!"

def test_add():
    """_summary_
    """
    assert add(5,7) == 12
