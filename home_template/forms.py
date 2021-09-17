from django import forms
from django.core.validators import validate_email


class contactformemail(forms.Form):
    Name = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Your Name and Surname...'}), label='', max_length=60, required=True)
    Email = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'Your Email Address...'}), label='', max_length=60, error_messages={'required': 'Please enter your correct email address'}, required=True, validators=[validate_email])
    Message = forms.CharField(widget=forms.Textarea(attrs={'placeholder': 'Your Message...', 'cols': 88, 'rows': 8}), label='', max_length=2000, required=True)


