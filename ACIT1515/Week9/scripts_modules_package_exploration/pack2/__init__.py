"""Demonstration of a package init, only logs the when module is loaded"""
from log_setup import log

# log("init start")
log(f"init __name__ = {__name__} :  begin loading")

__all__ = ["modc", "modd"]

log(f"init __name__ = {__name__} :  end of loading")
# log("init end")
