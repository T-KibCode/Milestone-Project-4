from django.shortcuts import render

# Create your views here.

def biography_view(request):
    """ a view to return biography page """
    return render(request, 'biography.html')