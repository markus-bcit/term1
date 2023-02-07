"""Simple module to demonstrate module include processing
"""

from log_setup import log

# Log module load start
log(f"module __name__ = {__name__} :  begin loading")

# Demonstrate nested import - check log to see if the following import is logged
import mod1


def mod2func():
    """Basic demonstration module level function, simply logs the call and calls
    mod1.mod1func"""
    log("executing mod2func")
    mod1.mod1func()


# Log module load end
log(f"module __name__ = {__name__} :  end of loading")
