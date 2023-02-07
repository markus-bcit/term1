word1 = "WORD"
word2 = "DOG"
a = [*word1]
b = [*word2]
def unicode_sum1():
    a = [*word1]
    b = [*word2]
    lenga = len(word1)
    b = 0
    for x in range(lenga):
        b += ord(a[x])
    return b
unicode_sum1()
print(unicode_sum1())


