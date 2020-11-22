# Generated by Django 3.1.1 on 2020-09-10 22:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('menu', '0003_auto_20200911_0322'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='internal_link',
            field=models.CharField(blank=True, choices=[('about', 'About Section'), ('services', 'Service Section'), ('team', 'Team Section'), ('footer', 'Contact Us')], help_text='This will take you to a section of the page.Note that you should either give one of the link and not the both in same menu option', max_length=200),
        ),
    ]
