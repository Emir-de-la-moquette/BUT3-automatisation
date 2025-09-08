import sys
import os
sys.path.append(os.getcwd())
import pytest 

from src.greeting.main import greet   
from src.greeting.utils import add   

def test_greet():
    """_summary_
    """
    assert greet("World") == "Hello, World!"

def test_add():
    """_summary_
    """
    assert add(5,7) == 12
