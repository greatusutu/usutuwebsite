from django.contrib import admin

from .models import Template
class TemplateAdmin(admin.ModelAdmin):
  list_display=('id','banner_title','is_published','banner_text')
  list_display_links=('id','banner_title','banner_text')
  list_editable=('is_published',)
  list_per_page=25
admin.site.register(Template,TemplateAdmin)

