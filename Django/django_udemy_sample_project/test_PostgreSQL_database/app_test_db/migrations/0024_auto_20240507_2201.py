# Generated by Django 3.1.5 on 2024-05-07 15:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0023_motorbikes_banner_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='motorbike_attributes',
            name='color_3',
            field=models.CharField(blank=True, max_length=10, verbose_name='Màu sắc 3 - màu phụ 2'),
        ),
        migrations.AlterField(
            model_name='motorbike_attributes',
            name='color_2',
            field=models.CharField(blank=True, max_length=10, verbose_name='Màu sắc 2 - màu phụ 1'),
        ),
    ]
