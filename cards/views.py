from urllib import request
from django.shortcuts import render

from cards.admin import Carousel

# Create your views here.
projects = Carousel.objects.all()


HttpResponse = render(request, 'template.html', {'projects': projects})

