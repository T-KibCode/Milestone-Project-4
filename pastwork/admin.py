from django.contrib import admin
from embed_video.admin import AdminVideoMixin
from .models import Videos


class MyModelAdmin(AdminVideoMixin, admin.ModelAdmin):
    pass


admin.site.register(Videos, MyModelAdmin)
