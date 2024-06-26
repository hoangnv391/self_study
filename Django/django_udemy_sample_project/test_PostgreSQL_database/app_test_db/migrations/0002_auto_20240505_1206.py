# Generated by Django 3.1.5 on 2024-05-05 05:06

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app_test_db', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='brands',
            fields=[
                ('brand_id', models.AutoField(primary_key=True, serialize=False)),
                ('brand_name', models.CharField(max_length=50, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='motor_types',
            fields=[
                ('type_id', models.AutoField(primary_key=True, serialize=False)),
                ('type_name', models.CharField(max_length=50, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='motorbike_attributes',
            fields=[
                ('attribute_id', models.AutoField(primary_key=True, serialize=False)),
                ('attribute_type', models.CharField(choices=[('color', 'Color'), ('option', 'Option')], default='color', max_length=10)),
                ('value', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='motorbike_skus',
            fields=[
                ('sku_id', models.AutoField(primary_key=True, serialize=False)),
                ('year', models.IntegerField(validators=[django.core.validators.MinValueValidator(1984), django.core.validators.MaxValueValidator(2025)])),
                ('price', models.DecimalField(decimal_places=0, max_digits=9)),
                ('color', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='color', to='app_test_db.motorbike_attributes')),
            ],
        ),
        migrations.CreateModel(
            name='order_details',
            fields=[
                ('order_id', models.AutoField(primary_key=True, serialize=False)),
                ('total', models.IntegerField(null=True)),
                ('status', models.CharField(max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='users',
            fields=[
                ('user_id', models.AutoField(primary_key=True, serialize=False)),
                ('phone', models.DecimalField(decimal_places=0, max_digits=15)),
                ('full_name', models.CharField(max_length=100)),
                ('address', models.CharField(max_length=500)),
                ('email', models.EmailField(max_length=254, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='payment_details',
            fields=[
                ('payment_id', models.AutoField(primary_key=True, serialize=False)),
                ('payment_type', models.CharField(max_length=20)),
                ('status', models.CharField(max_length=50)),
                ('order', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.order_details')),
            ],
        ),
        migrations.CreateModel(
            name='order_items',
            fields=[
                ('item_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField(null=True)),
                ('order', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.order_details')),
                ('sku', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.motorbike_skus')),
            ],
        ),
        migrations.AddField(
            model_name='order_details',
            name='user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.users'),
        ),
        migrations.CreateModel(
            name='motorbikes',
            fields=[
                ('motorbike_id', models.AutoField(primary_key=True, serialize=False)),
                ('model', models.CharField(max_length=100, unique=True)),
                ('description', models.CharField(max_length=2000, null=True)),
                ('brand', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.brands')),
                ('type', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.motor_types')),
            ],
        ),
        migrations.AddField(
            model_name='motorbike_skus',
            name='motorbike',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.motorbikes'),
        ),
        migrations.AddField(
            model_name='motorbike_skus',
            name='option',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='option', to='app_test_db.motorbike_attributes'),
        ),
        migrations.CreateModel(
            name='carts',
            fields=[
                ('cart_id', models.AutoField(primary_key=True, serialize=False)),
                ('total', models.IntegerField(null=True)),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.users')),
            ],
        ),
        migrations.CreateModel(
            name='cart_items',
            fields=[
                ('item_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField(null=True)),
                ('cart', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.carts')),
                ('sku', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='app_test_db.motorbike_skus')),
            ],
        ),
    ]
