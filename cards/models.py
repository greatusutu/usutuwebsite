from django.db import models

# Create your models here.
CARD_CHOICES = (
  ('B','Banner Card'),
   ('T', 'Team Card'),
   ('S', 'Service Card')
)
class Card(models.Model):
   image=models.ImageField(upload_to='photos/%Y/%m/%d/')
   title=models.CharField(max_length=200)
   text=models.TextField()
   team_member_description=models.TextField(blank=True,help_text="only for team members")
   card_type=models.CharField(choices=CARD_CHOICES, default='B',max_length=200)
   is_published= models.BooleanField(default=True)
   def __str__(self):
     return self.title


