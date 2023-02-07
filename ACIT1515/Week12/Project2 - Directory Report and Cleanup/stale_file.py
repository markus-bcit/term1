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


def formatted_date(date: str) -> datetime.date:
    """takes date as str, converts to date so it
    can be compared

    Args:
        date (str): date in str

    Returns:
        datetime.date: date as datetime.date
    """
    return datetime.datetime.strptime(date, "%Y-%m-%d").date()


def list_files_mod_date_size(root_path: pathlib.Path):
    """Recursively List all files and folders within a directory. Display the
    file path along with the modification date and file size in bytes.

    Args:
        root_path (pathlib.Path): The starting directory
    """
    if (root_path.exists() == True) and (sys.argv[3].lower() in ("print", "p")):
        # runs if the directory exists and if the action is print
        print()
        print(f"Root Directory: {root_path.resolve()}")
        print(f"Best Before Date: {sys.argv[2]}")
        print()
        print("Files to delete:")

        for path in root_path.rglob("*"):
            path_info = path.stat()
            mod_date = datetime.date.fromtimestamp(path_info.st_mtime)
            file_size = path_info.st_size
            relative_path = path.relative_to(root_path)
            if mod_date < formatted_date(sys.argv[2]):
                print(
                    f"{format_file_path(relative_path)} {mod_date.isoformat()} {format_file_size(file_size)}"
                )


def create_report(root_path: pathlib.Path):
    """Creates txt file. Display the
    file path along with the modification date and file size in bytes,
    separated by ','.

    Args:
        root_path (pathlib.Path): The starting directory
    """
    next = "\n"
    try:  # creates txt file, if already exists -> 'File already created'
        if (root_path.exists() == True) and (sys.argv[3].lower() in ("report", "r")):
            date = formatted_date(sys.argv[2])
            date_ = date.strftime("%Y_%m_%d")
            new_file = open(f"{date_}_stale_file.txt", "x")
            new_file.write(f"{root_path.resolve()}{next}")
            for path in root_path.rglob("*"):
                path_info = path.stat()
                mod_date = datetime.date.fromtimestamp(path_info.st_mtime)
                file_size = path_info.st_size
                relative_path = path.relative_to(root_path)
                if mod_date < formatted_date(sys.argv[2]):
                    new_file.write(
                        f"{root_path.resolve()}\{relative_path},{mod_date},{file_size}{next}"
                    )
            new_file.close()
    except:
        print("File already created.")


def main():
    # should print what is incorrect, root, date and/or action
    try:
        root_path = pathlib.Path(sys.argv[1])
        # get starting directory from command line
        # if sys.argv is missing an input -> IndexError
        if root_path.exists() == False:
            print("The root directory doesn't exist")
        if sys.argv[3].lower() in (
            "print",
            "p",
            "report",
            "r",
        ):  # sys.argv[3] must be "print", "p", "report", "r"
            try:
                formatted_date(sys.argv[2])
                if sys.argv[3].lower() in ("print", "p"):
                    list_files_mod_date_size(root_path)
                elif sys.argv[3].lower() in ("report", "r"):
                    create_report(root_path)
            except ValueError:
                print("The best before date is not valid, must be in from 'YYYY-MM-DD'")
        else:
            try:  # if nothing else works, it also checks if date is valid
                formatted_date(sys.argv[2])
            except ValueError:
                print("The best before date is not valid, must be in from 'YYYY-MM-DD'")
            print('The action is not one of "(P)rint" or "(R)eport"')
    except IndexError:
        print(
            "Invalid input, must be: 'python stale_file.py <directory> <date> <action>'"
        )


if __name__ == "__main__":
    main()
# python stale_file.py test_root 2021-05-09 Print
