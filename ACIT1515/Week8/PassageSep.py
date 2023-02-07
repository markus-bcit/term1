import collections
from passage01 import text as text
from passage02 import text as text2

# Greg Hewgill https://stackoverflow.com/questions/4131123/finding-the-most-frequent-character-in-a-string



def main():
    inny = int(
        input(
            """
1. The passages will be converted to all lowercase.
2. All punctuation characters in the passages will be converted to spaces.
3. The program will print the 5 letters that appear most frequently in each of the passages.
4. The program will print the 5 words that appear most frequently in each of the passages.
5. The program will print the words that both passages have in common.
6. The program will ask the user for a word.
7. The program will print the number of times that the word appears each of the passages.
Input (1-7): """
        )
    )
    # passage = int(input())

    def lowercase():
        print(text.lower())

    def pnctospc():
        tmp = text.replace(",", " ")
        tmp1 = tmp.replace(";", " ")
        nopunc = tmp1.replace(".", " ")
        return nopunc

    def letters5():
        tmp = collections.Counter(text).most_common(5)
        print(tmp)
        # print(f"'{tmp[0][0]}' appears {tmp[0][1]} times.")
        # print(f"'{tmp[1][0]}' appears {tmp[1][1]} times.")
        # print(f"'{tmp[2][0]}' appears {tmp[2][1]} times.")
        # print(f"'{tmp[3][0]}' appears {tmp[3][1]} times.")
        # print(f"'{tmp[4][0]}' appears {tmp[4][1]} times.")

    def words5():
        a = pnctospc().split()
        return collections.Counter(a).most_common(5)
        
    if inny == 1:
        lowercase()
    elif inny == 2:
        print(pnctospc())
    elif inny == 3:
        letters5()
    elif inny == 4:
        print(words5())


if __name__ == "__main__":
    main()

    # def split():
    #     splitty = text.split()
    #     lang = len(splitty)
    #     print(lang)
    #     b = 0
    #     for x in splitty:
    #         tmp1 = splitty[b]
    #         tmp = tmp1.split()
    #         if tmp.endswith(','):
    #             print(tmp, 'nahhhhhhhhhhhhh')
    #         elif tmp.endswith('.'):
    #             tmp.pop()
    #             print(tmp, 'periodt')
    #         b += 1
