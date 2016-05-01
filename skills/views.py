from django.shortcuts import render, get_object_or_404
from .models import Category

# Create your views here.


def index(request):
	latest_category_list = Category.objects.order_by('-id')
	context = {'latest_category_list': latest_category_list}
	return render(request, 'skills/index.html', context)

def detail(request, category_id):
	category = get_object_or_404(Category, pk=category_id)
	return render (request, 'skills/detail.html', {'category': category})
