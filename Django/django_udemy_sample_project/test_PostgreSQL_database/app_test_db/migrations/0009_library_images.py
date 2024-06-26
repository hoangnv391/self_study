# Generated by Django 3.1.5 on 2024-05-05 14:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0008_image_table_test'),
    ]

    operations = [
        migrations.CreateModel(
            name='library_images',
            fields=[
                ('image_id', models.AutoField(primary_key=True, serialize=False)),
                ('image', models.ImageField(upload_to='library_images')),
                ('motorbike', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.motorbikes')),
            ],
        ),
    ]
