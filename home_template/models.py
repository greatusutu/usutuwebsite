from django.db import models

from home_template import forms
from home_template.forms import contactformemail
from  django.forms import ModelForm
from django.forms import forms
from django import forms


BUTTON_CHOICES = (
  ('about', 'About Section'),
  ('services', 'Service Section'),
  ('team', 'Team Section'),
  ('contact', 'Contact Section'),
)


class Template(models.Model):
    logo = models.ImageField(upload_to='photos/%Y/%m/%d/')
    banner_image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    banner_title = models.CharField(max_length=200, help_text="use html three or more 'span' tag to separate lines and automatically it'll add color or you can manually add color")
    banner_text = models.TextField()
    button_text = models.CharField(max_length=20)
    button_will_take_to = models.CharField(choices=BUTTON_CHOICES, default='service', max_length=200)
    feature_card_title = models.CharField(max_length=200)
    feature_card_text = models.TextField()
    about_image = models.ImageField(upload_to='photos/%Y/%m/%d/')
    about_title = models.CharField(max_length=200)
    about_text = models.TextField(help_text="use html 'p' tag to separate lines and automatically it'll format or you can use any html tag and style inside them")
    service_title = models.CharField(max_length=200)
    team_title = models.CharField(max_length=200)
    team_text = models.TextField()
    social_image_1 = models.ImageField(upload_to='photos/%Y/%m/%d/')
    social_link_1 = models.CharField(max_length=200)
    social_image_2 = models.ImageField(upload_to='photos/%Y/%m/%d/')
    social_link_2 = models.CharField(max_length=200)
    social_image_3 = models.ImageField(upload_to='photos/%Y/%m/%d/')
    social_link_3 = models.CharField(max_length=200)
    is_published = models.BooleanField(default=True)

    def __str__(self):
        return self.banner_title
