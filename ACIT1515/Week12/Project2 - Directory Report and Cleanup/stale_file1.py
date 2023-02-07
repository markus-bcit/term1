""" pathlib demonstration

Resources:
    * What is a `Glob` in computing terms: https://en.wikipedia.org/wiki/Glob_(programming)
    * How to use Pathlib1: https://pymotw.com/3/pathlib/index.html
    * How to use Pathlib2: https://realpython.com/python-pathlib/
    * Official Pathlib documentation: https://docs.python.org/3/library/pathlib.html

"""
import datetime
import pathlib
import sys


def format_file_size(file_size: int) -> str:
    """Format file size in bytes into a human readable format

    Args:
        file_size (int): File size in bytes

    Returns:
        str: Human readable file size
    """
    SIZE_WIDTH = 5  # number of characters to use for file size excluding decimal point
    DECIMAL_PLACES = 2  # number of decimal places to use for file size
    FIELD_WIDTH = 9  # number of characters to use for the entire field
    KILOBYTE = 1024
    SIZE_FORMAT = f">{SIZE_WIDTH}.{DECIMAL_PLACES}f"

    if file_size >= (KILOBYTE**3):
        size_str = f"{round(file_size / (KILOBYTE ** 3), 2):{SIZE_FORMAT}} GB"

    elif file_size >= (KILOBYTE**2):
        size_str = f"{round(file_size / (KILOBYTE ** 2), 2):{SIZE_FORMAT}} MB"

    elif file_size >= KILOBYTE:
        size_str = f"{round(file_size / KILOBYTE, 2):{SIZE_FORMAT}} KB"

    elif file_size < KILOBYTE:
        size_str = f"{file_size:>{SIZE_WIDTH}}  B"

    return f"{size_str: >{FIELD_WIDTH}}"


def format_file_path(file_path: pathlib.Path) -> str:
    """Format a file path to a specific length, keeping the end of the path

    Args:
        file_path (pathlib.Path): File path to format

    Returns:
        str: Formatted file path
    """
    MAX_WIDTH = 80
    PREFIX = "..."
    format_string = f"{MAX_WIDTH}.{MAX_WIDTH}s"
    # path_str = str(file_path.resolve())
    path_str = str(file_path)

    # if the path is longer than the max width, truncate the beginning of the path,
    # leaving the end of the path and add a prefix to indicate the path has been truncated
    # The maximum width of the path is MAX_WIDTH characters
    if len(path_str) > MAX_WIDTH:
        path_str = PREFIX + str(path_str)[-(MAX_WIDTH - len(PREFIX)) :]

    return f"{str(path_str):{format_string}}"

def report_paths(root_path):
    date = convert_date(sys.argv[2])
    text_file = open(f"{date}_stale_file.txt", "w")
    text_file.write(f"{root_path.resolve()}\n")
    for path in root_path.rglob("*"):
        path_info = path.stat()
        mod_date = datetime.date.fromtimestamp(path_info.st_mtime)
        file_size = path_info.st_size
        relative_path = path.relative_to(root_path)
        if mod_date < convert_date(sys.argv[2]):
            text_file.write(f"{root_path.resolve()}/{mod_date}, {file_size}\n")
    text_file.close()


def convert_date(argv):
    date_time = datetime.datetime.strptime(argv, "%Y-%m-%d").date()
    return date_time



def list_files_mod_date_size(root_path: pathlib.Path):
    """Recursively List all files and folders within a directory. Display the
    file path along with the modification date and file size in bytes.

    Args:
        root_path (pathlib.Path): The starting directory
    """
 
    print(
        f"Root Directory:: {root_path.resolve()}"
        f"\nBest Before Date: {sys.argv[2]}"
    )

    for path in root_path.rglob("*"):
        path_info = path.stat()
        mod_date = datetime.date.fromtimestamp(path_info.st_mtime)
        file_size = path_info.st_size
        relative_path = path.relative_to(root_path)
        if mod_date < convert_date(sys.argv[2]):
            print(f"{format_file_path(relative_path)} {mod_date.isoformat()} {format_file_size(file_size)}")

def main():
    root_path = pathlib.Path(sys.argv[1])  # get starting directory from command line
    
    if sys.argv[3].upper() == "PRINT" or "P":
        list_files_mod_date_size(root_path)

    else:
        pass

    if sys.argv[3].upper() == "REPORT" or "R":
        report_paths(root_path)
    
    else:
        pass




    


if __name__ == "__main__":
    main()
