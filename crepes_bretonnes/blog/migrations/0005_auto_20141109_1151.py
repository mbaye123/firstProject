# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_article_slug'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='slug',
        ),
        migrations.AddField(
            model_name='article',
            name='slug1',
            field=models.SlugField(default=b'Les-crepes-bretonnes', max_length=100),
            preserve_default=False,
        ),
    ]
