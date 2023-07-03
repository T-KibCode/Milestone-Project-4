from django.db import models
from djmoney.models.fields import MoneyField
from decimal import Decimal
from djmoney.models.validators import MaxMoneyValidator, MinMoneyValidator
# Create your models here.


class MyModel(models.Model):
    money = MoneyField(
        max_digits=5, decimal_places=2, default=0, default_currency='GBP',
        validators=[
            MinMoneyValidator(Decimal(0.00)), 
            MaxMoneyValidator(Decimal(999.99)),
        ]
    )
