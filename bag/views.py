from django.shortcuts import render

# Create your views here.

def view_bag(request):
    """ A view that renders the bag content page """

    return render(request, 'bag/bag.html')


def add_to_bag(request, item_id):
    """ A a quantity of the specified product to the shopping bag """

    quantity = int(request.POST.get('quantity'))
    redirect_url = request.POST.get('redirect_url')