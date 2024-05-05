from django.db import models
from datetime import datetime

def year_choices():
    return [(r,r) for r in range(1984, datetime.date.today().year+1)]

def current_year():
    return datetime.date.today().year

# Create your models here.
class test_table(models.Model):
    item_id = models.AutoField(primary_key=True)
    type_name = models.CharField(max_length=50, unique=True, null=True)


class motor_types(models.Model):
    type_id = models.AutoField(primary_key=True)
    type_name = models.CharField(max_length=50, unique=True, null=False)


class brands(models.Model):
    brand_id = models.AutoField(primary_key=True)
    brand_name = models.CharField(max_length=50, unique=True, null=False)

class motorbikes(models.Model):
    motorbike_id = models.AutoField(primary_key=True)
    model = models.CharField(max_length=100, unique=True, null=False)
    description = models.CharField(max_length=2000, null=True)
    type = models.ForeignKey(motor_types, on_delete=models.CASCADE, null=True)
    brand = models.ForeignKey(brands, on_delete=models.CASCADE, null=True)

class motorbike_attributes(models.Model):
    class Attribute_Type(models.TextChoices):
        COLOR = 'color'
        OPTION = 'option'

    attribute_id = models.AutoField(primary_key=True)

    attribute_type = models.CharField(
        max_length=10,
        choices=Attribute_Type.choices,
        default=Attribute_Type.COLOR)

    value = models.CharField(max_length=50, null=False)

class motorbike_skus(models.Model):
    sku_id = models.AutoField(primary_key=True)
    year = models.IntegerField(choices=year_choices, default=current_year)
    price = models.DecimalField(max_digits=9, decimal_places=0)
    # image
    color = models.ForeignKey(motorbike_attributes, on_delete=models.CASCADE, null=True)
    option = models.ForeignKey(motorbike_attributes, on_delete=models.CASCADE, null=True)
    motorbike = models.ForeignKey(motorbikes, on_delete=models.CASCADE, null=True)


class users(models.Model):
    user_id = models.AutoField(primary_key=True)
    phone = models.DecimalField(max_digits=15, decimal_places=0)
    # password = models.
    full_name = models.CharField(max_length=100, null=False)
    address = models.CharField(max_length=500, null=False)
    email = models.EmailField(null=True)

class carts(models.Model):
    cart_id = models.AutoField(primary_key=True)
    total = models.IntegerField(null=True)
    user = models.ForeignKey(users, on_delete=models.CASCADE, null=True)

class cart_items(models.Model):
    item_id = models.AutoField(primary_key=True)
    quantity = models.IntegerField(null=True)

    cart = models.ForeignKey(carts, on_delete=models)
    sku = models.ForeignKey(motorbike_skus, on_delete=models.CASCADE, null=True)

class order_details(models.Model):
    order_id = models.AutoField(primary_key=True)
    total = models.IntegerField(null=True)
    status = models.CharField(max_length=50, null=True)

    user = models.ForeignKey(users, on_delete=models.CASCADE, null=True)

class order_items(models.Model):
    item_id = models.AutoField(primary_key=True)
    quantity = models.IntegerField(null=True)

    order = models.ForeignKey(order_details, on_delete=models.CASCADE, null=True)
    sku = models.ForeignKey(motorbike_skus, on_delete=models.CASCADE, null=True)

class payment_details(models.Model):
    payment_id = models.AutoField(primary_key=True)
    payment_type = models.CharField(max_length=20)
    status = models.CharField(max_length=50)

    order = models.ForeignKey(order_details, on_delete=models.CASCADE, null=True)


