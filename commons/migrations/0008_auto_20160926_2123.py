# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-09-26 21:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commons', '0007_auto_20160926_2102'),
    ]

    operations = [
        migrations.AddField(
            model_name='contact',
            name='cc_myself',
            field=models.EmailField(blank=True, max_length=254),
        ),
        migrations.AddField(
            model_name='contact',
            name='message',
            field=models.TextField(blank=True),
        ),
        migrations.AddField(
            model_name='contact',
            name='name',
            field=models.CharField(blank=True, max_length=100),
        ),
        migrations.AddField(
            model_name='contact',
            name='sender',
            field=models.EmailField(blank=True, max_length=254),
        ),
        migrations.AlterField(
            model_name='job',
            name='init_date',
            field=models.DateField(blank=True, verbose_name='Start Date'),
        ),
    ]
