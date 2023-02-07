number = int(input())

for n in range(1, number):
    temp = number % n
    if temp == 0:
        print(n, end=" ")
