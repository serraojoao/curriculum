from django.contrib import admin

# Register your models here.
from .models import Category, Skill


#class ChoiceInline(admin.StackedInline):
class SkillInline(admin.TabularInline):
	model = Skill
	extra = 3

class CategoryAdmin(admin.ModelAdmin):
	# fields = ['pub_date', 'question_text']
	fieldsets = [
		(None,					{'fields': ['category_text']}),
		#('Date information',	{'fields': ['pub_date'], 'classes': ['collapse']}),
	]
	inlines = [SkillInline]
	# list_display = ('skill_text')
	search_fields = ['category_text']

admin.site.register(Category, CategoryAdmin)