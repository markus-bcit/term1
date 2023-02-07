"""Simple script that echoes all of the arguments passed to the script
"""
import sys


def main():
    for arg_count, arg in enumerate(sys.argv):
        print(f"sys.argv[{arg_count}] Value: {arg}")
        arg_count += 1


if __name__ == "__main__":
    main()
