from django.db import models

# Create your models here.

class Category(models.Model):
    name = models.CharField(max_length=254)
    friendly_name = models.CharField(max_length=254, null=True, blank=True)

    def __str__(self):
        return self.name

    def get_friendly_name(self):
        return self.friendly_name

class Product(models.Model):
    id = models.CharField(primary_key=True, max_length=10)
    name = models.CharField(max_length=254)
    type = models.CharField(max_length=254)
    desc = models.TextField()
    atk = models.CharField(max_length=5)
    level = models.CharField(max_length=14)
    race = models.CharField(max_length=254)
    attribute = models.CharField(max_length=254)
    scale = models.CharField(max_length=50)
    archetype = models.CharField(max_length=100)
    linkval = models.CharField(max_length=14)
    linkmarkers = models.CharField(max_length=14)
    image_url = models.URLField(max_length=1024, null=True, blank=True)
    image_url_small = models.URLField(max_length=1024, null=True, blank=True)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    rating = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)
    image = models.ImageField(null=True, blank=True)
    formats = models.CharField(max_length=254)
    has_effect = models.CharField(max_length=354)

   

    def __str__(self):
        return self.name

