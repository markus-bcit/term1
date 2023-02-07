"""A colleciton of functions to encode and decode numerically encoded Baudot RTTY messages.
See:
    * https://en.wikipedia.org/wiki/Radioteletype
    * https://codedocs.org/what-is/baudot-code (ITA2 LSB on Left Variant)

"""
import string


DECODER = {
    "11000": "A",
    "10011": "B",
    "01110": "C",
    "10010": "D",
    "10000": "E",
    "10110": "F",
    "01011": "G",
    "00101": "H",
    "01100": "I",
    "11010": "J",
    "11110": "K",
    "01001": "L",
    "00111": "M",
    "00110": "N",
    "00011": "O",
    "01101": "P",
    "11101": "Q",
    "01010": "R",
    "10100": "S",
    "00001": "T",
    "11100": "U",
    "01111": "V",
    "11011": "W",
    "10111": "X",
    "10101": "Y",
    "10001": "Z",
    "00100": " ",
    "01000": "\n",
}


def clean_code(code: str) -> str:
    """
    Examples:
        >>> clean_code("00X110")
        '00110'
    """
    for letter in code:
        if letter not in ("01"):
            code = code.replace(letter, "")
    return code


def clean_message(message: str) -> str:
    """
    Examples:
        >>> clean_message("Hello, World!")
        'HELLO WORLD'
    """
    for x in message:
        if x in (string.punctuation):
            message = message.replace(x, "")
    message = message.upper()
    return message


def encode(message: str) -> str:
    """
    Examples:
        >>> encode("HELLO")
        '0010110000010010100100011'

        >>> encode("THIS IS A TEST")
        '0000100101011001010000100011001010000100110000010000001100001010000001'
    """
    message = clean_message(message)
    encoded = ""
    for letter in message:
        for k, v in DECODER.items():
            if letter == v:
                encoded += k
    return encoded


def decode(code: str) -> str:
    """
    Examples:
        >>> decode("0010110000010010100100011")
        'HELLO'

        >>> decode("0000100101011001010000100011001010000100110000010000001100001010000001")
        'THIS IS A TEST'
    """
    code = clean_code(code)
    binary_length = 5
    start = 0
    out = ""
    for x in range(binary_length, len(code) + 1, binary_length):
        dig5 = code[start:x]
        for k, v in DECODER.items():
            if dig5 == k:
                out += v
        start = x
    return out


def main():
    import doctest

    doctest.testmod()


if __name__ == "__main__":
    main()
