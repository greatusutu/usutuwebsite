
from django.contrib import admin
from .models import Menu
class MenuAdmin(admin.ModelAdmin):
  list_display = ('id', 'title', 'external_link', 'is_published', 'internal_link')
  list_display_links = ('id', 'title','external_link', 'internal_link')
  list_editable = ('is_published',)
  search_fields = ('title',)
  list_per_page = 25


admin.site.register(Menu, MenuAdmin)
