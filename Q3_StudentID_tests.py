import unittest

from Q3_StudentID import DocumentAnalyser


class Q3_checker(unittest.TestCase):

    def setUp(self):
        file_name = 'simplefile.txt'
        self.class_test = DocumentAnalyser(file_name)

    def test_DocumentAnalyser(self):
#        self.assertTrue(self.spellChecker.check_word('zygotic'))
        self.assertEqual(2, self.class_test.calc_number_of_lines())


if __name__ == '__main__':
    unittest.main()
