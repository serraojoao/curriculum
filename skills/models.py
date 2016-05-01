from django.db import models

# Create your models here.

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