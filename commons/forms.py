from django import forms
from django.utils.log import RequireDebugFalse

# Create your forms here.

class ContactForm(forms.Form):
    contact_name = forms.CharField(max_length=100, required=True)
    content = forms.CharField(widget=forms.Textarea, required=True)
    contact_email = forms.EmailField(required=True)
    
    # the new bit we're adding
    def __init__(self, *args, **kwargs):
        super(ContactForm, self).__init__(*args, **kwargs)
        self.fields['contact_name'].label = "Your name:"
        self.fields['contact_email'].label = "Your email:"
        self.fields['content'].label = "What do you want to say?"

