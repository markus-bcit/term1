import string

from data.passage01 import text as passage0
from data.passage02 import text as passage1


def lowercase(text: str) -> str:
    """
    Coverts passage1 to all lower case takes one passage as input, outputs string

    Args:
        text (str): either passage0 or passage1

    Returns:
        str: in all lower case
    """
    return text.lower()


def removepunc(text: str) -> str:
    """
    Removes punctuation after lowercase() function takes one passage as input -> outputs string

    Args:
        text (str): either passage0 or passage1

    Returns:
        str: in all lower case and no punctuation
    """
    nopunc = lowercase(text)
    # replaces character with " " if found in string.punctuation (not a character)
    for x in nopunc:
        if x in string.punctuation:
            nopunc = nopunc.replace(x, " ")
    return nopunc


def letters5(text: str) -> list:
    """
    Removes punctuation after lowercase() function takes one passage as input -> outputs common letters

    Args:
        text (str): either passage0 or passage1

    Returns:
        list: 5 most common character -> (count, [character])
    """
    text = removepunc(text)
    letters = {}
    # evaluates letters, if not in dictionary, letter is added with value=1, if letter is in dictionary, value + 1
    for char in text:
        if char not in letters:
            letters.update({char: 1})
        else:
            letters[char] += 1
    # converted to a stored list with key and value swapped, also [] added
    result = {
        k: v for v, k in sorted(letters.items(), key=lambda item: item[1], reverse=True)
    }
    a = []
    for v, k in result.items():
        a += [(v, [k])]
    return a[:5]


def words5(text: str) -> list:
    """
    Finds the most common words, similar to letters5(), takes one passage as input -> outputs list

    Args:
        text (str): either passage0 or passage1

    Returns:
        list: 5 most common words -> (count, [word])
    """
    list_of_words = removepunc(text).split()
    dict_of_words = {}
    # evaluates word, if not in dictionary, word is added with value=1, if word is in dictionary, value + 1
    for word in list_of_words:
        if word not in dict_of_words:
            dict_of_words.update({word: 1})
        else:
            dict_of_words[word] += 1
    # converted to a sorted list with key and value swapped, also [] added
    dict_of_words = {
        v: k
        for v, k in sorted(
            dict_of_words.items(), key=lambda item: item[1], reverse=True
        )
    }
    a = []
    for k, v in dict_of_words.items():
        a += [(v, [k])]
    return a[:5]


def common_words(text1: str, text2: str) -> list:
    """
    Find common words between both passages, takes both passages as inputs -> outputs list

    Args:
        text1 (str): passage0
        text2 (str): passage1

    Returns:
        list: 5 most common words -> (count, letter)
    """
    # texts are converted to list of words, finds intersection of words
    text_list1 = removepunc(text1).split()
    text_list2 = removepunc(text2).split()
    return sorted(set(text_list1).intersection(text_list2))


def search_word(word: str, passage: str) -> int:
    """Searches for input word in both strings Takes the input
    word and searches both passages -> outputs a count

    Args:
        word (str): word from input
        passage (str): passage0 and passage1

    Returns:
        int: number of times the word is found in passage
    """
    # text is converted to list of words
    text = removepunc(passage).split()
    count = 0
    i = 0
    # evaluates how many times the word is contained in the list
    while i < len(text):
        if word == text[i]:
            count += 1
        i += 1
    return count


def main():
    print()

    # executes for passage0 first
    print("Passage 0 Data")
    print("Most Frequent Letters:", letters5(passage0))
    print("Most Frequent Words:", words5(passage0))
    print()

    # then passage0
    print("Passage 1 Data")
    print("Most Frequent Letters:", letters5(passage1))
    print("Most Frequent Words:", words5(passage1))
    print()

    # common_words() function is executed
    print("Common Words:", common_words(passage0, passage1))
    print()

    # input_word is taken, search_word function is executed with passages
    input_word = str(input("Enter a word to find the frequency of: "))
    print(
        f"'{input_word}' appears {search_word(input_word, passage0)} times in passage 0"
    )
    print(
        f"'{input_word}' appears {search_word(input_word, passage1)} times in passage 1"
    )


if __name__ == "__main__":
    main()
