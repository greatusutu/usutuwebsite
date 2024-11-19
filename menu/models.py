from django.db import models

BUTTON_CHOICES = (
  ('about', 'About Section'),
  ('services', 'Service Section'),
  ('team', 'Team Section'),
  ('contact', 'Contact Section'),
  ('partners', 'partners section'),
)


class Menu(models.Model):
  title = models.CharField(max_length=20)
  external_link = models.CharField(max_length=20,help_text='For external links in menubar https://',blank=True)
  internal_link = models.CharField(choices=BUTTON_CHOICES,max_length=200,help_text='This will take you to a section of the page.Note that you should either give one of the link and not the both in same menu option',blank=True)
  is_published = models.BooleanField(default=True)

  def __str__(self):
     return self.title

