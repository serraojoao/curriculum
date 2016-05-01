# Copyright 2015 Matt Taube
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from django.contrib import admin
from django import forms
from commons.models import Category, Skill, Job, Tasks


class PageForm(forms.ModelForm):
    """Base ModelForm for Page and all subclasses"""

    #===========================================================================
    # class Meta:
    #     exclude = ['slug']
    #     model = Page
    #     widgets = {
    #         'content',
    #         'content_secondary'
    #     }
    #===========================================================================


class PageAdmin(admin.ModelAdmin):
    """Base ModelAdmin for Page and all subclasses"""
    form = PageForm
    list_display = [
        'title',
        'slug',
    ]

#class ChoiceInline(admin.StackedInline):
class SkillInline(admin.TabularInline):
    model = Skill
    extra = 3

class CategoryAdmin(admin.ModelAdmin):
    # fields = ['pub_date', 'question_text']
    fieldsets = [
        (None,                    {'fields': ['category_text']}),
        #('Date information',    {'fields': ['pub_date'], 'classes': ['collapse']}),
    ]
    inlines = [SkillInline]
    # list_display = ('skill_text')
    search_fields = ['category_text']


#class ChoiceInline(admin.StackedInline):
class TasksInline(admin.TabularInline):
    model = Tasks
    extra = 3
    
class JobAdmin(admin.ModelAdmin):
    # fields = ['pub_date', 'question_text']
    fieldsets = [
        (None,                    {'fields': ['job_title','init_date','end_date','location']}),
        #('Date information',    {'fields': ['pub_date'], 'classes': ['collapse']}),
    ]
    inlines = [TasksInline]
    # list_display = ('skill_text')
    search_fields = ['job_title']



admin.site.register(Category, CategoryAdmin)

admin.site.register(Job, JobAdmin)

