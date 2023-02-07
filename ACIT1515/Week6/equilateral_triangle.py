inp = int(input())
number = 2
space = 1

print(" " * (inp - 1), "*")

while number + 1 < inp:
    if space == 1:
        print(" " * (inp - number), "*", "*")
    number += 1
    print(" " * (inp - number), "*", " " * (space), "*")
    space += 2
print(" ", end="")
print("*" * (space + 4))
