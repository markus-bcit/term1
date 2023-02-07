#! /usr/bin/env python3
"""
This module demonstrates the use of imports and the structure of modules and
packages
"""
# used to demonstrate reloading of a module
import importlib

# Setup Logging
from log_setup import log

# Log the start of loading this module
log("module __name__ = {} :  begin loading".format(__name__))

# import other modules, functions and variables
import mod1
import pack1.moda
from mod1 import mod1_global
from mod2 import mod2func
from mod3 import mod3func as myfunc
from pack1.modb import modbfunc
from pack2 import *


def main():
    """Simple demonstration of modules and packages"""

    # log the start of the main function
    log("main function start")

    # demonstrate the use of the imported modules, functions and variables
    # all operations will be logged
    mod1.mod1func()
    pack1.moda.modafunc()
    print("mod1_global = {}".format(mod1_global))
    mod2func()
    myfunc()
    modbfunc()
    modc.modcfunc()
    modd.moddfunc()
    importlib.reload(mod1)

    # log the end of the main function
    log("main function end")


if __name__ == "__main__":
    main()

# log the final statement in the module
log(f"module __name__ = {__name__} :  end of loading")
