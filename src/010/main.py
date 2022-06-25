from sympy import isprime

MAX = 2_000_000
print (sum ([2] + [i for i in range (3, MAX, 2) if isprime (i)]))

