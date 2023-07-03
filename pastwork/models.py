from django.db import models
from embed_video.fields import EmbedVideoField


class Videos(models.Model):
    video = EmbedVideoField()
