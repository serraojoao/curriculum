from django.shortcuts import render
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.template.loader import render_to_string
from django.template import RequestContext
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from django.views import generic
from django.core.urlresolvers import reverse
from django.http import HttpResponsePermanentRedirect

from commons.models import Category
from commons.models import Job

class ContactView(generic.ListView):
    #model = Question
    template_name = 'commons/contact.html'


def home(request):
    category_list = Category.objects.order_by('-id').reverse()
    work_list = Job.objects.order_by('-id').reverse()
    #work_list = {1, 2, 3, 4, "sdsa" , "qweq"}
    context = {'category_list': category_list, 'work_list': work_list}
    return render(request, 'commons/home.html', context)

def detail(request, category_id):
    category = get_object_or_404(Category, pk=category_id)
    return render (request, 'commons/detail.html', {'category': category})
