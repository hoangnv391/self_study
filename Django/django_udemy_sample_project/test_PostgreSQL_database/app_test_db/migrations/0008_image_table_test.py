# Generated by Django 3.1.5 on 2024-05-05 10:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0007_auto_20240505_1711'),
    ]

    operations = [
        migrations.CreateModel(
            name='image_table_test',
            fields=[
                ('image_id', models.AutoField(primary_key=True, serialize=False)),
                ('image', models.ImageField(upload_to='')),
            ],
        ),
    ]
