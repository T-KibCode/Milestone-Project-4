from django.urls import path
from . import views


urlpatterns = [
    path('', views.pastwork_view, name='pastwork'),
]
