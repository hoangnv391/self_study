# Generated by Django 3.1.5 on 2024-05-07 13:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0021_auto_20240507_1956'),
    ]

    operations = [
        migrations.AlterField(
            model_name='motorbike_attributes',
            name='color_1',
            field=models.CharField(blank=True, max_length=10, verbose_name='Màu sắc 1 - màu chính'),
        ),
        migrations.AlterField(
            model_name='motorbike_attributes',
            name='color_2',
            field=models.CharField(blank=True, max_length=10, verbose_name='Màu sắc 2 - màu phụ'),
        ),
    ]