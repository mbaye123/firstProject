# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'


class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=50)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'


class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField()
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=30)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=75)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'


class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'


class BlogArticle(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    titre = models.CharField(max_length=100)
    auteur = models.CharField(max_length=42)
    contenu = models.TextField(blank=True)
    date = models.DateTimeField()
    categorie = models.ForeignKey('BlogCategorie')

    class Meta:
        managed = False
        db_table = 'blog_article'


class BlogCategorie(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    nom = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'blog_categorie'


class BlogMoteur(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    nom = models.CharField(max_length=25)

    class Meta:
        managed = False
        db_table = 'blog_moteur'


class BlogOffre(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    prix = models.IntegerField()
    produit = models.ForeignKey('BlogProduit')
    vendeur = models.ForeignKey('BlogVendeur')

    class Meta:
        managed = False
        db_table = 'blog_offre'


class BlogProduit(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    nom = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'blog_produit'


class BlogVendeur(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    nom = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'blog_vendeur'


class BlogVoiture(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    nom = models.CharField(max_length=25)
    moteur = models.ForeignKey(BlogMoteur, unique=True)

    class Meta:
        managed = False
        db_table = 'blog_voiture'


class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True)
    user = models.ForeignKey(AuthUser)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=100)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'


class DjangoMigrations(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
