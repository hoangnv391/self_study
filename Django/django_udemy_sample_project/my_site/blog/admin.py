from django.contrib import admin

# Register your models here.
from .models import Post, Author, Tag

class PostAdmin(admin.ModelAdmin):
    prepopulated_fields = {"slug" : ("title", )}
    list_display = ("title", "author", "date")
    list_filter = ("author", "tags", "date")

admin.site.register(Post, PostAdmin)
admin.site.register(Author)
admin.site.register(Tag)

