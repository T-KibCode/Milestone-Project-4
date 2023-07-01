from django.urls import path
from . import views


urlpatterns = [
    path('', views.biography_view, name='biography'),
]
