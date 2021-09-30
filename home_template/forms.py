from django import forms
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.utils.translation import ugettext


class contactformemail(forms.Form):
    Name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Your Name and Surname...'}), label='', max_length=60, required=True, error_messages={'validationError': '  Please enter your Name and Surname here'})
    Email = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Your Email Address...'}), label='', max_length=60, required=True, validators=[validate_email], error_messages={'invalid': '   Please enter your correct Email Address here.'})
    Message = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'Your Message...', 'cols': 88, 'rows': 8}), label='', max_length=2000, required=True,  error_messages={'required': '   Please enter your message here.'})


