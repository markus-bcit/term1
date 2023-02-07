# import string
import string 
from passage01 import text as passage0
from passage02 import text as passage1

# def lowercase(text: str) -> str:
#     """
#     Coverts passage1 to all lower case takes one passage as input, outputs string

#     Args:
#         text (str): either passage0 or passage1

#     Returns:
#         str: in all lower case
#     """
#     return text.lower()


# def removepunc(text: str) -> str:
#     """
#     Removes punctuation after lowercase() function takes one passage as input -> outputs string

#     Args:
#         text (str): either passage0 or passage1

#     Returns:
#         str: in all lower case and no punctuation
#     """
#     nopunc = lowercase(text)
#     # replaces character with " " if found in string.punctuation (not a character)
#     for x in nopunc:
#         if x in string.punctuation:
#             nopunc = nopunc.replace(x, " ")
#     return nopunc


# def main():
#     print(removepunc(passage0))


# if __name__ == "__main__":
#     main()

# test_string = "aaaabbbbccccddddeeeeffffgggghhhhiiii"
# code_length = 4
# code_start = 0
# for code_end in range(code_length, len(test_string) + 1, code_length):
#     print(test_string[code_start:code_end])
#     code_start = code_end

# from array import array
# import subprocess

# ##################################################################
# # ITA2 Look Up Table
# # MSB on Right
# # TODO : Correct All values
# # for MSB on right
# ##################################################################

# baudot = {'Q':[1,1,1,0,1], 'W':[1,0,0,1,1], 'E':[1,0,0,0,0],
# 		'R':[0,1,0,1,0], 'T':[1,0,0,0,0], 'Y':[1,0,1,0,1],
# 		'U':[0,0,1,1,1], 'I':[0,0,1,1,0], 'O':[1,1,0,0,0],
# 		'P':[0,1,1,0,1], 'A':[0,0,0,1,1], 'S':[1,0,1,0,0],
# 		'D':[1,0,0,1,0], 'F':[0,1,1,0,1], 'G':[1,1,0,1,0],
# 		'H':[1,0,1,0,0], 'J':[0,1,0,1,1], 'K':[0,1,1,1,1],
# 		'L':[0,1,0,0,1], 'Z':[1,0,0,0,1], 'X':[1,1,1,0,1],
# 		'C':[0,1,1,1,0], 'V':[0,1,1,1,1], 'B':[1,1,0,0,1],
# 		'N':[0,1,1,0,0], 'M':[1,1,1,0,0]}

# space = [0,0,1,0,0]

# # Message to be sent

# message="CQ CQ CQ DE SVPLE"


# # Loop through message string and
# # match letters from Baudot dict

# subprocess.call(["aplay","-D","default:CARD=Dongle","wait_state.wav"])

# for k in message:

# 	# Recognize white spaces
# 	if ord(k) == 32:
# 		a = space
# 	else:
# 		a = baudot.setdefault(k)

# 	b = len(a)

# 	# Start Bit
# 	subprocess.call(["aplay","-D","default:CARD=Dongle","space.wav"])

# 	for i in a:
# 		if i==1:
# 			subprocess.call(["aplay","-D","default:CARD=Dongle","mark.wav"])
# 		elif i==0:
# 			subprocess.call(["aplay","-D","default:CARD=Dongle","space.wav"])
# 		else:
# 			break;

# 		subprocess.call(["aplay","-D","default:CARD=Dongle","stop_bit.wav"])

# https://stackoverflow.com/questions/16930271/encode-binary-to-audio-python-or-c

# binary = {
#     "Q": "11101",
#     "W": "10011",
#     "E": "10000",
#     "R": "01010",
#     "T": "10000",
#     "Y": "10101",
#     "U": "00111",
#     "I": "00110",
#     "O": "11000",
#     "P": "01101",
#     "A": "00011",
#     "S": "10100",
#     "D": "10010",
#     "F": "01101",
#     "G": "11010",
#     "H": "10100",
#     "J": "01011",
#     "K": "01111",
#     "L": "01001",
#     "Z": "10001",
#     "X": "11101",
#     "C": "01110",
#     "V": "01111",
#     "B": "11001",
#     "N": "01100",
#     "M": "11100",
#     " ": "00100",
# }

# message = "HELLO MY NAME IS MARKUS"
# binary_code = "1010010000010010100111000001001110010101001000110000011111001000000100001101010000100111000001101010011110011110100"
# newmessage = ""
# translated_msg = ""
# binary_length = 5
# start = 0

# for letter in message:
#     newmessage += binary[letter] + ''
# print(newmessage)
# out = ""

# for x in range(binary_length, len(binary_code) + 1, binary_length):
#     dig5 = binary_code[start:x]
#     for k, v in binary.items():
#         if dig5 == v:
#             out += k
#     start = x
# print(out)


# def get_key(val):
#     for key, value in binary.items():
#         if val == value:
#             return key

print(string.punctuation, string.digits)