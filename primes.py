from math import *

def is_prime(n):
    if n < 4:
        return True
    if n % 2 == 0:
        return False
    for a in range(3, int(sqrt(n))+1):
        if n % a == 0:
            return False
    return True

def calculate_primes(n):
    primes = []
    p = 1
    for i in range(0, n):
        while not is_prime(p):
            p += 1
        primes.append(p)
        p += 1
    return primes

calculate_primes(100000)
