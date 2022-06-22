from sympy import isprime

MAX = 2_000_000
print (sum ([i for i in range (MAX) if isprime (i)]))

