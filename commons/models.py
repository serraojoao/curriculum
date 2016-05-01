from django.db import models
from datetime import date

# Create your models here.

from django.db import models
    
# Create your models here.
class Category(models.Model):
    category_text = models.CharField(max_length=200)
    def __str__(self):
        return self.category_text
    

class Skill(models.Model):
    category = models.ForeignKey(Category)
    skill_text = models.CharField(max_length=200)
    def __str__(self):
        return self.skill_text


class Job(models.Model):
    job_title = models.CharField(max_length=200)
    init_date = models.DateField('Start Date',default=date.today(), blank=True)
    end_date = models.DateField('End Date',default=date.today(), blank=True)
    location = models.CharField(max_length=200)
    def __str__(self):
        return self.job_title

    
class Tasks(models.Model):
    job = models.ForeignKey(Job)
    task_text = models.CharField(max_length=200)
    def __str__(self):
        return self.task_text

