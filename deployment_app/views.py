from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def index(r):
    return HttpResponse('<h2>Sample Deployment project </h2>')

def second_page(r):
    return HttpResponse('<h2>Sample Deployment project2 </h2>')