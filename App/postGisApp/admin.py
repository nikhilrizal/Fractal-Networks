from django.contrib import admin
from .models import Location
@admin.register(Location)
class LocationModelAdmin(admin.ModelAdmin):
    list_display = [ "name" ,"point"]