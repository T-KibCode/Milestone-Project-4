from django.shortcuts import render, redirect, reverse
from django.contrib import messages

from .forms import OrderForm

# Create your views here.

def checkout(request):
    bag = request.session.get('bag', {})
    if not bag:
        messages.error(request, "There is nothing in your bag at the moment")
        return redirect(reverse('products'))
        
    order_form = OrderForm()
    template = 'checkout/checkout.html'
    context = {
        'order_form': order_form,
        'stripe_public_key': 'pk_test_51NOKebDnRi6tcAjX2EJx77IrXr85w8Zo9ozMKhxwETHmdN9EiqyX7Za7HDeN3xgU1RgbWwnUrjAv4l2oEtl4jxJ600vXv1PFkn',
        'client_secret': 'test client secret',
    }

    return render(request, template, context)