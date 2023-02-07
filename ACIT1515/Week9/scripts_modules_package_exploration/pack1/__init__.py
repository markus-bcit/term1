"""Demonstration of a package init, only logs the when module is loaded"""

from log_setup import log

# log("init start")
log(f"init __name__ = {__name__} :  begin loading")

# log("init end")
log(f"init __name__ = {__name__} :  end of loading")
