
from django.db import models
from django.contrib.auth.models import  User

class Health(models.Model):
    user=models.OneToOneField(to=User,on_delete=models.CASCADE)
    lastChecked=models.DateField(auto_now_add=True)
    status=models.TextField(max_length=200,default="")

