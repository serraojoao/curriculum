from django.shortcuts import render, render_to_response
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from django.template.loader import render_to_string, get_template
from django.template import RequestContext, Context
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView
from django.views import generic
from django.core.urlresolvers import reverse
from django.core.mail import send_mail
from django.http import HttpResponsePermanentRedirect
from django.http import HttpResponseRedirect, HttpResponse
from django.core.mail import send_mail
from django.shortcuts import redirect
from django.contrib import messages
from django.views.decorators.csrf import csrf_protect

from commons.models import Category, Job, Contact
from commons.forms import ContactForm

# import sendgrid
# import os
# from sendgrid.helpers.mail import *


@csrf_protect
def home(request):
    
    form_class = ContactForm
    
    category_list = Category.objects.order_by('-id').reverse()
    work_list = Job.objects.order_by('-id').reverse()
    
    context = {'category_list': category_list, 'work_list': work_list}
    
    errors = []
    messages = []
        
    # new logic!
    if request.method == 'POST':
        form = form_class(data=request.POST)
        
        
        if form.is_valid():
            contact_name = request.POST.get('contact_name', '')
            contact_email = request.POST.get('contact_email', '')
            form_content = request.POST.get('content', '')
            
            # Add message to database
            contact = Contact(name=contact_name, message=form_content, sender=contact_email)
            contact.save()
            
    
#             # Email the message
#             template = get_template('commons/contact_template.txt')
#             mail_context = Context({
#                 'contact_name': contact_name,
#                 'contact_email': contact_email,
#                 'content': form_content,
#             })
#             
#             content = template.render(mail_context)
#             send_mail(
#                 'Subject here',
#                 content,
#                 'from@example.com',
#                 ['to@example.com'],
#                 fail_silently=False,
#             )
            
            
#             sg = sendgrid.SendGridAPIClient(apikey=os.environ.get('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'))
#             from_email = Email("test@example.com")
#             to_email = Email("serraojoao@hotmail.com")
#             subject = "Sending with SendGrid is Fun"
#             content = Content("text/plain", "and easy to do anywhere, even with Python")
#             mail = Mail(from_email, subject, to_email, content)
#             response = sg.client.mail.send.post(request_body=mail.get())
#             print(response.status_code)
#             print(response.body)
#             print(response.headers)
#             
            
            
            
            
            
                        
            messages.append('Form submission successful!')
        
        else:
            errors.append('Form not properly submitted!')
    
    context = {'category_list': category_list, 'work_list': work_list, 'messages':messages, 'errors':errors}
    return render(request, 'commons/home.html', context)
  
    
    
    
# import sendgrid
# import os
# from sendgrid.helpers.mail import *
# 
# sg = sendgrid.SendGridAPIClient(apikey=os.environ.get('SENDGRID_API_KEY'))
# from_email = Email("test@example.com")
# to_email = Email("test@example.com")
# subject = "Sending with SendGrid is Fun"
# content = Content("text/plain", "and easy to do anywhere, even with Python")
# mail = Mail(from_email, subject, to_email, content)
# response = sg.client.mail.send.post(request_body=mail.get())
# print(response.status_code)
# print(response.body)
# print(response.headers)

