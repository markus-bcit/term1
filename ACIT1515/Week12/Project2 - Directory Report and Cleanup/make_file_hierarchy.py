"""This program creates a file hierarchy for testing your directory
reporting and cleanup programs
"""
import csv
import datetime
import os
import pathlib
import shutil


def make_path_dates(
    data_file_path: pathlib.Path,
) -> list[tuple[pathlib.Path, datetime.datetime]]:
    """Generates a list of file path, iso formatted modification date strings

    Args:
        data_file_path (str): the string path of a csv file

    Returns:
        list: a list of file paths, iso formatted date string tuples
    """
    path_dates = []
    with open(data_file_path) as data_file:
        csv_data = csv.reader(data_file)
        header = next(csv_data)  # skip the first line as it is a header
        for path_str, date_str in csv_data:
            path_dates.append(
                (pathlib.Path(path_str), datetime.datetime.fromisoformat(date_str))
            )

    return path_dates


def make_file_hierarchy(
    root_dir: pathlib.Path, paths: list[tuple[pathlib.Path, datetime.datetime]]
):
    """Creates a file hierarchy from a list of path, iso formatted date
    string tuples. The file hierarchy is created in the current working
    directory.

    Args:
        paths (list[tuple[pathlib.Path, str]]):  a list of tuples, each with a
            file path and the desired modification date for the file
    """
    if root_dir.exists():
        shutil.rmtree(root_dir)  # delete directory and all subdirectories

    for rel_path, modified_date in paths:
        full_path = root_dir / rel_path
        full_path.parent.mkdir(parents=True, exist_ok=True)
        full_path.write_text(f"{full_path.resolve()} {modified_date:%Y_%m_%d}")
        os.utime(full_path, (modified_date.timestamp(), modified_date.timestamp()))
        os.utime(
            full_path.parent, (modified_date.timestamp(), modified_date.timestamp())
        )


def main():
    """Create a file hierarchy from a csv file"""
    cwd = pathlib.Path(__file__).parent.absolute()
    test_root_dir = cwd / "test_root"
    data_file_path = cwd / "file_hierarchy.csv"
    path_dates = make_path_dates(data_file_path)
    make_file_hierarchy(test_root_dir, path_dates)


if __name__ == "__main__":
    main()
