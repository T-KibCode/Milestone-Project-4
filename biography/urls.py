from django.urls import path
from . import views

urlpatterns = [
    # Other URL patterns
    path('biography/', views.biography_view, name='biography'),
]
