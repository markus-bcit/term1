"""
Simple logging setup module

Configures logging and creates alias to debug logger called: log
this will be used in other modules
"""
# Setup Logging
import logging


def configure():
    """Configure logging by setting the level and format in logging.basicConfig
    and creating a global logger object called log"""

    global log

    logging.basicConfig(
        level=logging.DEBUG,
        format="{filename:<22} {module:<22} {funcName:<12} {message}",
        style="{",
    )  # Use new style string formatter

    log = logging.getLogger(__name__).debug


def log_header():
    """Write a header to the log"""

    filename = "filename"
    module = "module"
    funcName = "function"
    message = "message"
    header = f"{filename:<22} {module:<22} {funcName:<12} {message}"
    print(header)
    header = "-" * 90
    print(header)


# Setup Logging on import so it can be used immediately
configure()
log_header()
