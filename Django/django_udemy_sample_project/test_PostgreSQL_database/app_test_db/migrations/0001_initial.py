# Generated by Django 3.1.5 on 2024-05-04 06:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='test_table',
            fields=[
                ('item_id', models.AutoField(primary_key=True, serialize=False)),
                ('type_name', models.CharField(max_length=50, null=True, unique=True)),
            ],
        ),
    ]
