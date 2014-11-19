#-*- coding: utf-8 -*-
from django.http import HttpResponse, Http404
from django.shortcuts import render, redirect, get_object_or_404
from datetime import datetime
from blog.models import Article
from blog.forms import ContactForm

# Create your views here.

def VjXKRXO(request):
        return render(request, 'blog/VjXKRXO.html')

def contact(request):
        if request.method == 'POST':
                post = request.POST
                keys = post.keys()
                values = post.values()
                taille = range(0,len(keys))
                form  = ContactForm(request.POST)
                if form.is_valid():
                        sujet = form.cleaned_data['sujet']
                        message  = form.cleaned_data['message']
                        envoyeur = form.cleaned_data['envoyeur']
                        renvoi = form.cleaned_data['renvoi']

                        # Nous pourions envoyer l'email grace aux donnees que nous venons de recupere

                        envoi = True
        else : # Si la requete n'est pas du POST c'est donc du GET 
                form = ContactForm() # Nous creons un formulaire vide

        return render(request, "blog/contact.html", locals())


                        

def accueil(request):
        """ Affiche tous les articles de notre blog """
        articles = Article.objects.all()
        print request
        return render(request, "blog/accueil.html",{'derniers_articles' : articles})

def article(request):
        articles = Article.objects.all()
        return render(request, "blog/article.html", {"articles": articles})

def lire(request, id):
    """ Afficher un article complet """
    try:
            article = Article.objects.get(id=id) 
    except Article.DoesNotExist:
            raise Http404
    return render(request, 'blog/lire.html',{'article':article, 'requests': request})

def lire1(request,id):
    article = get_object_or_404(Article,id=id)
    return render(request, 'blog/lire.html',{'article':article})

def home(request):
	""" Exemple de page HTMl, non valide pour que l'exemple soit concis """
	text = u"""<h1>Bienvenue sur mon blog !</h1>
		<p>les crêpes batonne ca tue les mouches en plein vol ! </p>"""
        r = request.META
        req =""
        for k in r:
                req += str(k)  + " : " + str(r[k]) + "</br>"
	return HttpResponse(text + "\n" + req)



def list_articles(request, year, month):

	msg = "Vous avez demandé les articles suivants : {} {}".format(year, month)
	if int(month) > 12 :
#		raise Http404	
		return redirect(page404,mois=int(month))

	if int(year) == 2013: 
		return redirect(passe, annee=int(year))

	return HttpResponse(msg)

def page404(request,mois):
	return HttpResponse("This month " + mois + " does not exist")


def passe(request, annee):
	return HttpResponse("Pour " + str(annee) + " : Ces articles ne sont plus disponibles, désolé !")


def date_actuelle(request):
	return render(request, 'blog/date.html', {'date' : datetime.now()})


def addition(request, nombre1, nombre2):
	couleurs = ['rouge', 'orange', 'jaune', 'vert', 'bleu', 'indigo', 'violet']
	couleurs1 = {'FF0000':'rouge', 
            'ED7F10':'orange', 
            'FFFF00':'jaune', 
            '00FF00':'vert', 
            '0000FF':'bleu', 
            '4B0082':'indigo', 
            '660099':'violet'}
	total = int(nombre1) + int(nombre2)
	return render(request, 'blog/addition.html',locals())

