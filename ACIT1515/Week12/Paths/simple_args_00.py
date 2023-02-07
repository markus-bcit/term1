"""Script expects to be invoked with a filename as the first argument

Example
    simple_args_00 some_file
    >>> some_file
"""
import sys

def main():
    file_name = sys.argv[1]
    print(file_name)

if __name__ == "__main__":
    main()
