# Generated by Django 3.1.5 on 2024-05-06 16:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0015_auto_20240506_2304'),
    ]

    operations = [
        migrations.AlterField(
            model_name='motorbike_feature_images',
            name='description',
            field=models.CharField(blank=True, max_length=200, verbose_name='Mô tả'),
        ),
    ]
