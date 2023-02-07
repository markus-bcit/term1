"""Script expects to be invoked with a filename as the first argument
If not it prints an error message

Example
    simple_args_03 some_file

    will output:
    some_file
"""
import sys


def main():
    if len(sys.argv) != 2:
        print("you must supply a file name")
        exit()
    file_name = sys.argv[1]
    print(file_name)

if __name__ == "__main__":
    main()
