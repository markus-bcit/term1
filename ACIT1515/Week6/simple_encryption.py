thang = str(input())
leng = len(thang)

# while b < leng:
#     char(leng)
#     b += 1

b = 0

while b < leng:
    if ord(thang[b]) % 2 == 0:
        print(str(ord(thang[b]) + 3).zfill(3), end=" ")
    else:
        print(str(ord(thang[b]) + 1).zfill(3), end=" ")
    b += 1
print()

numb = str(input("Numb:"))
leng = len(numb)

# while leng > 0:
#     huh = numb[0] + numb[1] + numb[2]
#     huh = int(huh)
#     if huh % 2 == 0:
#         huh -= 1
#         print(chr(huh), end="")
#         numb = numb[1:]
#         numb = numb[1:]
#         numb = numb[1:]
#     elif huh % 2 == 1:
#         huh -= 3
#         print(chr(huh), end="")
#         numb = numb[1:]
#         numb = numb[1:]
#         numb = numb[1:]
#     leng -= 3


while leng > 0:
    huh = numb[0] + numb[1] + numb[2]
    huh = int(huh)
    if huh % 2 == 0:
        huh -= 1
        print(chr(huh), end="")
        numb = numb[1:]
        numb = numb[1:]
        numb = numb[1:]
        numb = numb[1:]
    elif huh % 2 == 1:
        huh -= 3
        print(chr(huh), end="")
        numb = numb[1:]
        numb = numb[1:]
        numb = numb[1:]
        numb = numb[1:]
    leng -= 4

