#!/usr/bin/env python3
# -*- coding: utf-8 -*-
###############################################################################

# 3.	This question tests your ability to manipulate strings in Python.
#
# A file based document analyser application is one that reads a file and
# analyses the text in the file while providing summary analysis.
#
# a)	Create a class called DocumentAnalyser.
# [4 marks]
#
# b)	In your DocumentAnalyser class, create methods to calculate the:
#
# i.	number of lines in a file
# ii.	number of words in a file
# iii.	number of characters in a file
# iv.	average number of characters per line in a file
# v.	average number of words per line in a file
# vi.	average number of characters per word in a file
# [12 marks]
#
#
# c)	Write some code to test your new DocumentAnalyser class and print out
# results of your testing to the user. Give some consideration to what sort of
# strings you might want to use for your testing.
# [9 marks]
#
# (Total: 25 Marks)

# Details are available in CA4 and the spell check example


class DocumentAnalyser(object):

    def __init__(self, file):
        self.file = file
        self.data = self.read_file(self.file)
        self.__number_of_lines = 0
        self.__number_of_words = 0
        self.__number_of_characters = 0

    def read_file(self, file_name):
        my_file = open(file_name)
        lines = my_file.readlines()
        my_file.close()
        return list(map(lambda x: x.strip(), lines))

    def calc_number_of_lines(self):
        self.__number_of_lines = len(self.data)
        return self.__number_of_lines

    def calc_number_of_words(self):
        self.__number_of_words = 0
        for line in self.data:
            self.__number_of_words += len(line.split(' '))
        return self.__number_of_words

    def calc_number_of_characters(self):
        self.__number_of_characers = 0
        for line in self.data:
            self.__number_of_characters += len(line)
        return self.__number_of_characters

# Alternative example is with Lamba using map and reduce
# Should be quicker to code if you are familiar with it... Probably

    def get_avg_chars_per_line(self):
        return self.__number_of_characters / self.__number_of_lines

    def get_avg_words_per_line(self):
        return self.__number_of_words / self.__number_of_lines

    def get_avg_characters_per_word(self):
        return self.__number_of_characters / self.__number_of_words

# Code under here will only run when we run this file.
# This stops it also running when the tests load it up


if __name__ == '__main__':
    doc_analysis = DocumentAnalyser('simplefile.txt')
    print("Number of Lines")
    print(doc_analysis.calc_number_of_lines())
    print("Number of Words")
    print(doc_analysis.calc_number_of_words())
    print("Number of Characters")
    print(doc_analysis.calc_number_of_characters())
    print("Average Chars per Line")
    print(doc_analysis.get_avg_chars_per_line())
    print("Average Words per Line")
    print(doc_analysis.get_avg_words_per_line())
    print("Average Chars per Word")
    print(doc_analysis.get_avg_characters_per_word())
