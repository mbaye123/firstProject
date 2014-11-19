BEGIN;
CREATE TABLE "blog_article" (
       "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
       "titre" varchar(100) NOT NULL, 
       "auteur" varchar(42) NOT NULL, 
       "contenu" text NULL, 
       "date" datetime NOT NULL
);
CREATE TABLE "blog_categorie" (
       "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, 
       "nom" varchar(30) NOT NULL
);
CREATE TABLE "blog_article__new" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "titre" varchar(100) NOT NULL, "auteur" varchar(42) NOT NULL, "contenu" text NULL, "date" datetime NOT NULL, "categorie_id" integer NOT NULL REFERENCES "blog_categorie" ("id"));
INSERT INTO "blog_article__new" ("date", "titre", "auteur", "id", "contenu") SELECT "date", "titre", "auteur", "id", "contenu" FROM "blog_article";
DROP TABLE "blog_article";
ALTER TABLE "blog_article__new" RENAME TO "blog_article";
CREATE INDEX blog_article_0a1d6b76 ON "blog_article" ("categorie_id");

COMMIT;
