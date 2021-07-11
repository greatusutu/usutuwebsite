from django.contrib import admin
from .models import Card
class CardsAdmin(admin.ModelAdmin):
  list_display=('id','title','is_published','text','card_type')
  list_display_links=('id','title','text')
  list_filter=('card_type',)
  list_editable=('is_published',)
  search_fields=('title','')
  list_per_page=25
admin.site.register(Card,CardsAdmin)

