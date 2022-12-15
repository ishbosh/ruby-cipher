# ruby-cipher
A Caesar Cipher built with Ruby

Added rspec testing to the original code. While implementing spec tests I discovered
a previously unknown bug with the letters not properly wrapping around after z.

Converts a-z and A-Z chars in string to ASCII and shifts them by the
shift variable, and then converts back to chars and returns the new string.
Wraps letters around to a when they pass z.

Optional parameter to remove whitespaces (change to true to remove whitespace)
Default shift value of 1 if no shift is argument entered.

Original version included a test case to showcase how the encryption works, and the option
to input a custom message, shift factor, and turn on/off whitespace removal. I left the tests
from that version in the cipher.rb file as a comment.