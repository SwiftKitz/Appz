#!/usr/bin/env python
import unittest


def test_placeholder():
    assert (1+1 == 2)


# Here's our "unit tests".
class EqualityTests(unittest.TestCase):

    def test(self):
        self.failIf(test_placeholder())


def main():
    unittest.main()


if __name__ == '__main__':
    main()
