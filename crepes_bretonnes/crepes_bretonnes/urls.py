from django.conf.urls import patterns, include, url
from django.contrib import admin
#from blog.views import *

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'crepes_bretonnes.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$','VjXKRXO'),    
    url(r'^VjXKRXO.html$','blog.views.VjXKRXO'),
    url(r'^blog/', include('blog.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
