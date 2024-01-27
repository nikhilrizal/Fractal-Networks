# File: myproject/tests.py
from django.test import TestCase
from postGisApp.models import Location

class LocationModelTest(TestCase):

    def test_location_creation(self):
        # Create a location instance
        location = Location.objects.create(name='Test Location', point='POINT(0 0)')
        print("create location object" ,location)
        # Retrieve the location from the database
        saved_location = Location.objects.get(name='Test Location')
        
        # Check if the data was saved correctly
        self.assertEqual(saved_location.name, 'Test Location')
        self.assertEqual(saved_location.point.x, 0)
        self.assertEqual(saved_location.point.y, 0)

        # Check the __str__ method
        self.assertEqual(str(location), 'Test Location')

