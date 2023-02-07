"""Demonstrate basic datetime operations

This program demonstrates basic datetime operations and file timestamps

References:
    Datetime:
        https://realpython.com/python-datetime/
        https://docs.python.org/3/library/datetime.html

    Python Pathlib (cross platform file system paths):
        https://docs.python.org/3/library/pathlib.html
        https://realpython.com/python-pathlib/

    Python os module (required to set file timestamps):
        https://nitratine.net/blog/post/change-file-modification-time-in-python/
        https://docs.python.org/3/library/os.html

"""

import datetime
import os
import pathlib


def main():
    # Make a date for the start of the term, don't set the time
    start_of_term = datetime.datetime(2022, 9, 6, 0, 0, 0)

    # Make a datetime for today, but set the time to 0:00:00
    today_datetime = datetime.datetime.now()
    today = datetime.datetime(
        today_datetime.year,
        today_datetime.month,
        today_datetime.day,
        hour=0,
        minute=0,
        second=0,
    )

    # get stats for current path
    current_file_path = pathlib.Path(__file__)
    current_file_stats = current_file_path.stat()

    # get timestamp for current file - note: these are recorded as the number
    # of seconds since the epoch (Jan 1, 1970)
    cf_creation_timestamp = current_file_stats.st_ctime
    cf_modification_timestamp = current_file_stats.st_mtime

    # To be useful you will need to convert the timestamp to a date object
    # we are going to ignore the time portion of the date for simplicity
    cf_creation_dt = datetime.datetime.fromtimestamp(cf_creation_timestamp)
    cf_modification_dt = datetime.datetime.fromtimestamp(cf_modification_timestamp)

    # Create date delta's - i.e. datetime differences
    one_day = datetime.timedelta(days=1)
    one_month = datetime.timedelta(days=30)
    one_year = datetime.timedelta(days=365)

    # Create a datetime 30 days before today
    yesterday = today - one_day

    # Create a datetime 30 days before today
    last_month = today - one_month

    # Create a datetime 1 year before today
    last_year = today - one_year

    # Create a file that was created 1 year ago and modified one year ago
    # Note: we are going to use the current path as the root of the file
    # hierarchy
    year_old_file = current_file_path.parent / "test_file.txt"
    year_old_file.touch()
    os.utime(year_old_file, (last_year.timestamp(), last_year.timestamp()))
    year_old_file_stats = year_old_file.stat()
    year_old_file_modification_timestamp = year_old_file_stats.st_mtime
    yof_mod_dt = datetime.datetime.fromtimestamp(year_old_file_modification_timestamp)

    # Using some dates
    print(f"Today is {today.isoformat()}")
    print(f"This file: {current_file_path.absolute()}")
    print(f"This file timestamp is {cf_creation_timestamp}")
    print(f"This file creation datetime: {cf_creation_dt.isoformat()}")
    print(f"This file modification datetime: {cf_modification_dt.isoformat()}")
    print(f"This file was created {today - cf_creation_dt} ago")
    print(f"This file was created a day or more ago: {cf_creation_dt < yesterday}")
    print(f"This file was created a month or more ago: {cf_creation_dt < last_month}")
    print(f"This file was created a year or more ago: {cf_creation_dt < last_year}")
    print(f"The year old file was created {today - cf_creation_dt} ago")
    print(f"The year old file was created a year or more ago: {yof_mod_dt < last_year}")

    user_dt_string = input("Enter a date in the format YYYY-MM-DD: ")
    year, month, day = user_dt_string.split("-")

    # Create a datetime object from the input
    user_dt = datetime.datetime(int(year), int(month), int(day), 0, 0, 0)
    is_newer = "older" if cf_creation_dt < user_dt else "newer"
    print(f"This file is {is_newer} than the date you entered")
    is_newer = "older" if yof_mod_dt < user_dt else "newer"
    print(f"The file is {is_newer} than the date you entered")


if __name__ == "__main__":
    main()
