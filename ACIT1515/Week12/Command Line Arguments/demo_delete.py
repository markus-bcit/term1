"""A simple demonstration of how to use the pathlib module to delete files and
directories
"""
import pathlib


def del_path(path: pathlib.Path):
    """Delete path if file or directory

    Args:
        path (pathlib.Path): path to delete
    """

    if path.is_file():
        path.unlink()

    if path.is_dir() and not any(path.iterdir()):
        path.rmdir()


def main():
    path_str = input("Enter path to delete: ")
    del_path(pathlib.Path(path_str))


if __name__ == "__main__":
    main()
