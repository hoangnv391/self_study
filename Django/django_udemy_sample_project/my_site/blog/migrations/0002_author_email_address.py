# Generated by Django 3.1.5 on 2024-04-13 08:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='author',
            name='email_address',
            field=models.EmailField(max_length=254, null=True),
        ),
    ]