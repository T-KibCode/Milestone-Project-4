from django.shortcuts import render
from .models import Videos


def pastwork_view(request):
    videos = Videos.objects.all()
    context = {
        'videos': videos
    }

    return render(request, 'pastwork.html')

