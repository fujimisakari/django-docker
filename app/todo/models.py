# -*- coding:utf-8 -*-

from django.db import models


class Item(models.Model):
    text = models.TextField()
    date_posted = models.DateField(auto_now=True)
