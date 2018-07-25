#! python3
# collatzSequence

'''
Write a function named collatz() that has one parameter named number.
If number is even, then collatz() should print number // 2 and return this value.
If number is odd, then collatz() should print and return 3 * number + 1.

Then write a program that lets the user type in an integer and that keeps calling collatz()
on that number until the function returns the value 1.
'''
import sys

def collatz(num):
    if num % 2 == 0:
        # Pair number
        r = num/2
    elif num % 2 == 1:
        # Odd number
        r = 3 * num + 1
    print(str(r))
    return r

if len(sys.argv) < 2:
	print("Usage: python collatzSequence.py [number] - prints collatz sequence")
	sys.exit()

try:
    num = int(sys.argv[1])
except ValueError:
    print("Input must be an integer")
    sys.exit()

while num != 1:
    num = collatz(num)
