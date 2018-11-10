import unittest

from Q3_StudentID import DocumentAnalyser


class Q3_checker(unittest.TestCase):

    def setUp(self):
        file_name = 'simplefile.txt'
        self.class_test = DocumentAnalyser(file_name)

    def test_DocumentAnalyser(self):
        self.assertEqual(2, self.class_test.calc_number_of_lines())
        # This should include test for each method
        self.assertEqual(8, self.class_test.calc_number_of_words())
        self.assertEqual(33, self.class_test.calc_number_of_characters())
        self.assertEqual(16.5, self.class_test.get_avg_chars_per_line())
        self.assertEqual(4, self.class_test.get_avg_words_per_line())
        self.assertEqual(4.125, self.class_test.get_avg_characters_per_word())


if __name__ == '__main__':
    unittest.main()
