"""Simple module to demonstrate module include processing

Attributes:
    mod1_global: example of module level variable

"""
from log_setup import log

# Log module load start
log(f"module __name__ = {__name__} :  begin loading")

mod1_global = "mod1 global variable"


def mod1func():
    """Basic demonstration module level function, simply logs the call"""
    log("executing mod1func")


if __name__ == "__main__":

    # If executed as script simply invoke mod1func
    mod1func()


# Log module load end
log(f"module __name__ = {__name__} :  end of loading")
