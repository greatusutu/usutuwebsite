from django.shortcuts import render, get_object_or_404, redirect
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.http import HttpResponse, HttpResponseRedirect


from home_template.forms import contactformemail
from django.core.mail import send_mail

from django.contrib import messages
from django.contrib.messages import constants

from django.core.mail import send_mail, BadHeaderError
from menu.models import Menu
from cards.models import Card
from home_template.models import Template

from validate_email import validate_email


def index(request):
  form = contactformemail()

  if request.method == 'POST':
    form = contactformemail(request.POST)
    if form.is_valid():
      subject = "Website Inquiry"
      body = {
        'your_name': form.cleaned_data['Name'],
        'your_email': form.cleaned_data['Email'],
        'your_message': form.cleaned_data['Message'],
      }
      message = "\n".join(body.values())

      try:

        form = contactformemail()
        if(send_mail(subject, message, 'Kegaogetswe.moyaba@usutu.co.za', ['Kegaogetswe.moyaba@usutu.co.za'])):
          form = contactformemail()
          messages.success(request, 'Successfully send.We will get back to you soon.', extra_tags='alert')
          return redirect("http://127.0.0.1:8000/#contact")

        else:
          form = contactformemail()
          messages.error(request, 'Failed to send. Verify your details and Try again.', extra_tags='alert')
          return redirect("http://127.0.0.1:8000/#contact")

      except BadHeaderError:
        return HttpResponse('Invalid header found.')



  cards = Card.objects.filter(is_published=True)
  cards_team = cards.filter(card_type='T')
  cards_service = cards.filter(card_type='S')
  cards_banner = cards.filter(card_type='B')
  template = Template.objects.filter(is_published=True)
  if template:
    template = template[0]
  menu = Menu.objects.filter(is_published=True)
  context={
    'cards_service':cards_service,
    'cards_banner':cards_banner,
    'cards_team':cards_team,
    'template':template,
    'menu':menu,
    'form':form,
  }

  return render(request,'index.html',context)


