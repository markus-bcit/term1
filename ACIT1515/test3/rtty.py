import rtty_util
from data.message01 import code as message01
from data.message02 import code as message02


print("Message 1:")
print(rtty_util.decode(message01))
print()
print("Message 2:")
print(rtty_util.decode(message02))
print()
input_message = str(input("Enter a message to encode: "))
print(rtty_util.encode(input_message))