from django.shortcuts import render

def biography_view(request):
    # Add your logic here
    return render(request, 'biography/biography.html')