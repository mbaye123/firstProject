from django.conf.urls import patterns, url

urlpatterns = patterns('blog.views',
	url(r'^$', 'VjXKRXO'),
        url(r'article/(?P<id>\d+)', 'lire'),
        url(r'article', 'article'),        
        url(r'contact', 'contact'),
        url(r'VjXKRXO.html','VjXKRXO'),
        #url(r'article/(?P<id>\d+)-(?P<slug>.+)$', 'lire'),
	url(r'^passe/(?P<annee>\d{4})', 'passe', name='passera'),
#	url(r'^articles/(?P<year>\d{4})/(?P<month>\d{1,2}$)', 'list_articles'),
	url(r'^page404/(?P<mois>\d{2})', 'page404'),
	url(r'^date', 'date_actuelle'),
	url(r'^addition/(?P<nombre1>\d+)/(?P<nombre2>\d+)$', 'addition'),
)
