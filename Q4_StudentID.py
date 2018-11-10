#!/usr/bin/env python3
# -*- coding: utf-8 -*-
###############################################################################

# 4.	This question tests your understanding of Big O notation and
# programming in Python use lambda, map, and reduce functionality.
#
# a)	Create a class in Python called Calculator.
#
# In your Calculator class, implement methods called triple(), third(),
# fourth_order(), and fourth_order_root() which take a list of numbers as an
# argument and return the appropriate result.
#
# These should be implemented with the map and lambda functions.
#
# For example, if the argument is [1, 2, 3] for the triple() function it will
# return [3, 6, 9].

class Calculator(object):

    def __init__(self):
        self.variable = 0

    def triple(self, x):
        return map(lambda x: x*3, x)

    def third(self):
        return 0

    def fourth_order(self):
        return 0

    def fourth_order_root(self):
        return 0

My_Calc = Calculator()
print(list(My_Calc.triple([1,2,3])))

# [6 marks]
#
# b)	Evaluate the Big‐O classification for the following functions.
# i.	f(n) = 4*n ‐ 1
# ii.	f(n) = 6*log n – 2
# iii.	f(n) = 2*n^4 + 9*n^3 + 5
# iv.	f(n) = 6*n^2 + (1+9*n)*3n^2
# v.	f(n) = 5*n + 8*n
# vi.	f(n) = 21
# [6 marks]

# Take highest term, drop multiplier, and drop all lower order terms

# i.	f(n) = 4*n ‐ 1                         O(n)
# ii.	f(n) = 6*log n – 2                     O(log(n))
# iii.	f(n) = 2*n^4 + 9*n^3 + 5               O(n^4)
# iv.	f(n) = 6*n^2 + (1+9*n)*3n^2            O(n^3)
# v.	f(n) = 5*n + 8*n                       O(n)
# vi.	f(n) = 21                              O(1)

# Note we need the O in there or zero marks.

# c)	Write a program to make a “Guess the Letter” game.
#
# The computer will think of a random letter from ‘a’ to ‘z’, and ask you to
# guess it. The computer will tell you if each guess is too high or too low in
# the alphabet. You win if you can guess the number within six tries.
# [13 marks]
#
# (Total: 25 Marks)



# Note if you're using python3 which we are and a reduce function you need
# to use the following.
from functools import reduce

# Example of gnerator
def generate_cities():
    yield 'London'
    yield 'Dublin'
    yield 'Manchester'

# If we print them as a list print everything
print(list(generate_cities()))

# If we print them in a for loop it will let us do something to each
for cities in generate_cities():
    print(cities)

# With a function, we can keep calling it and it will remember where we were
def quadruple(data):
    for value in data:
        yield value**4

# Here we feed in 3 numbers.
quad_generator = quadruple([1,2,3])
print(next(quad_generator))
print(next(quad_generator))
print(next(quad_generator))
# If we called it a 4th time we would get an error as there is only 3 items
