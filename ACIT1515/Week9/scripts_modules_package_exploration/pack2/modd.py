"""Simple module to demonstrate module include processing
"""
from log_setup import log

# Log module load start
log(f"module __name__ = {__name__} :  begin loading")


def moddfunc():
    """Basic demonstration module level function, simply logs the call"""
    log("executing moddfunc")


# Log module load end
log(f"module __name__ = {__name__} :  end of loading")
