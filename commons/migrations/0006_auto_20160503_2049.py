# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-05-03 20:49
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commons', '0005_auto_20160425_2002'),
    ]

    operations = [
        migrations.AlterField(
            model_name='job',
            name='end_date',
            field=models.DateField(blank=True, verbose_name='End Date'),
        ),
        migrations.AlterField(
            model_name='job',
            name='init_date',
            field=models.DateField(blank=True, default=datetime.date(2016, 5, 3), verbose_name='Start Date'),
        ),
    ]
