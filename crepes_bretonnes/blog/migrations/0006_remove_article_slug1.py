# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_auto_20141109_1151'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='article',
            name='slug1',
        ),
    ]
