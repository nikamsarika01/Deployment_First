
from django.contrib import admin
from django.urls import path
from deployment_app import  views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index),
    path('second_page/',views.second_page)
]
