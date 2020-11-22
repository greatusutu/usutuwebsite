from django.shortcuts import render,get_object_or_404
from django.core.paginator import EmptyPage,PageNotAnInteger,Paginator
from django.http import HttpResponse

from menu.models import Menu
from cards.models import Card
from home_template.models import Template
def index(request):
  cards=Card.objects.filter(is_published=True)
  cards_team=cards.filter(card_type='T')
  cards_service=cards.filter(card_type='S')
  cards_banner=cards.filter(card_type='B')
  template=Template.objects.filter(is_published=True)
  if template:
    template=template[0]
  menu=Menu.objects.filter(is_published=True)
  context={
    'cards_service':cards_service,
    'cards_banner':cards_banner,
    'cards_team':cards_team,
    'template':template,
    'menu':menu
  }
  return render(request,'index.html',context)