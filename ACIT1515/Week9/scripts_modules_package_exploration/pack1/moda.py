"""Simple module to demonstrate module include processing
"""
from log_setup import log

# Log module load start
log(f"module __name__ = {__name__} :  begin loading")


def modafunc():
    """Basic demonstration module level function, simply logs the call"""
    log("executing modafunc")


# Log module load end
log(f"module __name__ = {__name__} :  end of loading")
