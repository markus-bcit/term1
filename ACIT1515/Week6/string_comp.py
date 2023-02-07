""" Simple command line program that asks for two words and a attribute to compare
(letter length or sum of Unicode values) and outputs which word is bigger.
"""


def unicode_sum(word: str) -> int:
    """Returns the sum of the unicode values of a string

    Args:
        word (str): word to calculate unicode total of

    Returns:
        int: the total of the unicode values of each letter
    """
    # Implement function here
    pass


# Optionally, you may wish to implement your comparison logic as separate functions


def main():
    compare = ""
    word1 = str(input("Please enter word 1: "))
    word2 = str(input("Please enter word 2: "))
    compare = str(input("Please enter comparison type - (L)ength or (U)nicode Sum:"))
    # finds the length of the words
    def leng():
        length1 = len(word1)
        length2 = len(word2)
        if length2 > length1:
            print("Word 2 is larger in length")
        if length1 > length2:
            print("Word 1 is larger in length")
        if length1 == length2:
            print("Word 1 is the same length as Word 2")

    # converts the word to uni code sum
    def unicode_sum1():
        a = [*word1]
        lenga = len(word1)
        b = 0
        for x in range(lenga):
            b += ord(a[x])
        return b

    def unicode_sum2():
        a = [*word2]
        lenga = len(word2)
        b = 0
        for x in range(lenga):
            b += ord(a[x])
        return b

    # compares if user inputed l or u and runs their function
    if compare == "L" or compare == "l":
        leng()
    if compare == "U" or compare == "u":
        unicode_sum1()
        # compares the unicode of both words
        if int(unicode_sum2()) > int(unicode_sum1()):
            print("Word 2 is larger in Unicode")
        if int(unicode_sum1()) > int(unicode_sum2()):
            print("Word 1 is larger in Unicode")
    if compare != "U" and compare != "u" and compare != "L" and compare != "l":
        print(compare, "is an invalid Input")
    pass


if __name__ == "__main__":
    main()
