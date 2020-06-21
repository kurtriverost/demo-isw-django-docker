from django.test import TestCase

from app.calc import add

class CalcTest(TestCase):

    def test_add_numbers(self):
        """Prueba que dos numeros se suman correctamante mi rey"""
        self.assertEqual(add(2, 3), 5)