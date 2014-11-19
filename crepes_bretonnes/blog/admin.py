# conding : utf-8
#-*- coding : utf-8 -*-
from django.contrib import admin
from blog.models import Article, Categorie
from django.utils.encoding import smart_unicode
# Register your models here.


class ArticleAdmin(admin.ModelAdmin):
    list_display = ('titre', 'auteur', 'date', 'apercu_contenu')
    list_filter = ('auteur', 'categorie')
    date_hierarchy = 'date'
    ordering = ('date',)
    search_fields =('titre', 'contenu')

    prepopulated_fields = {'slug': ('titre',),}
    fieldsets = (
        (smart_unicode('General'),{
            'classes' : ['collapse'],
#             'classes' : ['extrapretty'],
#            'classes' : ['wide'],
            'fields' : ('titre', 'slug', 'auteur', 'categorie')
        }),
        ('Contenu de l\'article',{
            'description': 'Le formulaire accepte les balises HTMl, utilisez les en bon escient :',
            'fields' : ('contenu',)
        }),
    )



    def apercu_contenu(self, article):
        """
        Retoune les 40 premiers caracteres de l'article, S'il
        y'a plus de 40 caracteres, l faut rajouter des points de suspensions.
        """

        text = article.contenu[0:40]
        if len(article.contenu) > 40 :
            return "%s..." % text
        else:
            return text

    apercu_contenu.short_description = " Apercu du contenu"
admin.site.register(Categorie)
admin.site.register(Article,ArticleAdmin)

        
