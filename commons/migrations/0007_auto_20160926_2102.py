# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-09-26 21:02
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commons', '0006_auto_20160503_2049'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.AlterField(
            model_name='job',
            name='init_date',
            field=models.DateField(blank=True, default=datetime.date(2016, 9, 26), verbose_name='Start Date'),
        ),
    ]
