from django.shortcuts import render
from .models import Book
from django.http.response import Http404
from django.shortcuts import get_object_or_404

# Create your views here.

def index(request):
    all_books = Book.objects.all()
    return render(request, "book_outlet/index.html", {
        "books" : all_books,
    })

def book_detail(request, book_id):
    book = get_object_or_404(Book, id=book_id)
    return render(request, "book_outlet/book_detail.html", {
        "title": book.title,
        "author": book.author,
        "rating": book.rating,
        "is_bestseller": book.is_bestselling,
    })

