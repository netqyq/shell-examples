import sys

def factorial(num):
    result = 1
    for i in range(1, num + 1):
        result = result * i
    return result


i = factorial(int(sys.argv[1]))
print(i)
