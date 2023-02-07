"""
Simple script to show how arguments can be accessed and then passed to another
function
"""
import sys


def show_args(argument_list):
    for pos, arg in enumerate(sys.argv):
        print(f"Argument: {pos} Value: {arg}")


def main():
    show_args(sys.argv)


if __name__ == "__main__":
    main()
