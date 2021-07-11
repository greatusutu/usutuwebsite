# Generated by Django 3.1.1 on 2020-09-11 19:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home_template', '0004_auto_20200911_0409'),
    ]

    operations = [
        migrations.AlterField(
            model_name='template',
            name='about_text',
            field=models.TextField(help_text="use html 'p' tag to separate lines and automatically it'll format or you can use any html tag and style inside them"),
        ),
        migrations.AlterField(
            model_name='template',
            name='banner_title',
            field=models.CharField(help_text="use html three or more 'span' tag to separate lines and automatically it'll add color or you can manually add color", max_length=200),
        ),
    ]