"""A demonstration of a python import that requires modifying the sys.path in
order to find the module being imported
"""

import pathlib  # https://docs.python.org/3/library/pathlib.html
import sys  # https://docs.python.org/3/library/sys.html


def init_logging():
    """Initializes logging function demonstrating imports that modify the sys.path"""

    # get the current directory of this file
    current_dir = pathlib.Path(__file__).parent.resolve()

    # the relative path to the log_setup file is known
    rel_path_mod = pathlib.Path("..\\scripts_modules_package_exploration")

    # create a path
    path_to_mod = (current_dir / rel_path_mod).resolve()
    # insert the new path after the current directory, i.e. the second position
    sys.path.insert(1, str(path_to_mod))

    # imports create variables, these can be scoped as well
    global log

    # from the other module import the log function that has been made global
    from log_setup import log


def main():
    init_logging()
    log("started main")


if __name__ == "__main__":
    main()