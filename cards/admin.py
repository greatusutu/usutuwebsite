from django.contrib import admin

from django.db import models
from .models import Card


class CardsAdmin(admin.ModelAdmin):
    list_display = ('id', 'title', 'is_published', 'text', 'card_type')
    list_display_links = ('id', 'title', 'text')
    list_filter = ('card_type',)
    list_editable = ('is_published',)
    search_fields = ('title', '')
    list_per_page = 25


class Carousel(models.Model):
    image = models.ImageField()


dictCa = {'Carousel': Carousel()}
admin.site.register(Card, CardsAdmin, **dictCa)
