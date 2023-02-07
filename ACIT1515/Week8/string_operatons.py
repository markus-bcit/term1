"""Demonstration of several string operations.
"""
import string


def convert_characters(passage: str, translator: dict[str, str]) -> str:
    """convert characters in a passage passed on translation dictionary

    Args:
        passage (str): string to have characters converted
        translator (dict[str: str]): dictionary of characters to convert

    Returns:
        str: passage with characters

    """
    translated_text = ""
    for char in passage:
        if char in translator:
            translated_text = translated_text + translator[char]
        else:
            translated_text = translated_text + char

    return translated_text


def convert_w_maketrans(passage: str, from_chars: str, to_chars: str) -> str:
    """Convert characters in a passage by swapping the char in from chars with
    the char in the to_chars at the same position using str.maketrans

    Args:
        passage (str):    text to process
        from_chars (str): string of characters to match
        to_chars (str):   string of character to replace the
                          corresponding char in from_chars

    Returns:
        str: _description_
    """
    # Only use the number of characters equal to the smallest string
    length = len(from_chars) if len(from_chars) < len(to_chars) else len(to_chars)

    conversion_table = str.maketrans(from_chars[0:length], to_chars[0:length])

    translated_text = passage.translate(conversion_table)

    return translated_text


def str_to_list_words(text: str, seperators: list[str]) -> list[str]:
    pass


def main():
    # Print all punctuation
    print(f"Punctuation: {string.punctuation}")

    # Convert vowels to _
    text = input("Please input a text message to convert vowels to _: ")

    # Method 1
    translation_table = {
        "a": "_",
        "e": "_",
        "i": "_",
        "o": "_",
        "u": "_",
        "A": "_",
        "E": "_",
        "I": "_",
        "O": "_",
        "U": "_",
    }
    print(f"Translated text: {convert_characters(text, translation_table)}")

    # Method 2
    vowels = "aeiouAEIOU"
    underscores = len(vowels) * "_"
    print(f"Translated text: {convert_w_maketrans(text, vowels, underscores)}")

    # Creating lists from strings
    word_list = text.split()
    print(f"Original text split by spaces: {word_list}")

    converted_word_list = convert_characters(text, translation_table).split("_")
    print(f"Transllated text split by underscores: {converted_word_list}")

    print(f"First three words: {word_list[0:3]}")
    print(f"First three words converted: {converted_word_list[0:3]}")


if __name__ == "__main__":
    main()
