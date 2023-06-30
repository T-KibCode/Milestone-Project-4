from django.urls import path
from .views import biography_view

app_name = 'biography'

urlpatterns = [
    path('', biography_view, name='biography'),
]