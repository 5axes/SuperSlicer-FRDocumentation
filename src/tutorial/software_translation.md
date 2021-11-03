# Comment créer / mettre à jour votre propre langue

Notez que SuperSlicer ne prend en charge que les langues s'écrivant de gauche à droite (si vous voulez changer cela, vous êtes le bienvenu pour contribuer).

Votre langue doit avoir [un code](https://www.loc.gov/standards/iso639-2/php/code_list.php) (utilisez l'ISO 639-1, deuxième colonne). Créer un répertoire et y placer un fichier .mo ajoutera automatiquement la traduction dans Slic3r.

Vous devrez compléter un fichier texte '.po', avec un éditeur de texte ou un logiciel spécifique comme poedit. Lorsque votre travail de traduction est terminé, vous devrez le compiler dans un fichier '.mo', celui-ci n'est pas lisible avec un éditeur de texte mais lisible par le logiciel.

Si votre langue est déjà là, vous supprimez tous les fichiers actuels pour repartir de zéro ou vous les renommez pour les utiliser comme point de départ.

Si vous avez trouvé une traduction bizarre et que vous voulez la modifier, passez à la [section B](#b-mettre-à-jour-un-fichier-po-existant).

## A) Faites votre propre traduction

Outils utiles :

* **windows :**
 * [python](https://www.python.org/)
 * [gettext](http://gnuwin32.sourceforge.net/downlinks/gettext.php)
* **linux :**
  * python : Assurez-vous que vous pouvez exécuter python3, installez-le s'il n'est pas là.
  * gettext : si vous ne pouvez pas exécuter msgfmt, installez le paquet 'gettext'.
* **macos :** peut-être comme linux ?

### 1) initialisation

Ouvrir le fichier settings.ini, pour chaque fichier pouvant contenir une traduction utile, créer/modifier une ligne "data" pour pointer vers ledit fichier.
La propriété "input" doit être le chemin de Slic3r.pot.
La "sortie" doit être le fichier Slic3r.po.
Le "todo" contient le chemin du fichier po à compléter.

Notez que la première ligne de données a la priorité sur les autres (la première traduction rencontrée est celle qui est utilisée).

Dans cet exemple, nous allons mettre à jour la traduction française.
Nous allons utiliser votre ancien fichier de traduction et le fichier actuel de SuperSlicer.
Pour décompiler le .mo de SuperSlicer, utilisez la commande **`msgunfmt SuperSlicer.mo -o SuperSlicer.po`**.
Ainsi, le fichier **settings.ini** contient ces lignes :

```
data = fr/Slic3r.po
data = MyKnowledgeBase.po
data = fr/SuperSlicer_fr.po

database_out = MyKnowledgeBase.po

ui_dir = ../ui_layout
allow_msgctxt = false
ignore_case = false
remove_comment = true
percent_error_similar = 0.4
max_similar = 3
language = french
language_code = fr

input = Slic3r.pot
todo = fr/todo.po
output = fr/Slic3r.po
```

**Notes:**

* Les fichiers 'todo' et 'output' seront effacés, donc assurez-vous que rien d'important ne porte ce nom (ou écrivez un autre nom).
* le fichier 'database_out' recevra toutes les bases de données créées à partir des fichiers de données. De cette façon, il gardera vos nouvelles et anciennes traductions inutilisées juste au cas où la formulation reviendrait à celle-ci, ou pour être utilisé comme référence pour l'aide.
* `ui_dir` devrait être le chemin vers le répertoire `slic3r/resources/ui_layout`. Si vous êtes dans `slic3r/resources/localization`, cette valeur est bonne.
* allow_msgctxt est un boolean pour permettre de garder les balises msgctxt. Vous avez besoin d'une version récente de gettext pour l'utiliser.
* ignore_case est un boolean qui permet à l'outil d'ignorer la casse lors de la comparaison des msgid si aucune traduction n'est trouvée.
* remove_comment est un boolean qui supprimera tous les commentaires dans le fichier de sortie. C'est pour éviter les changements inutiles dans le commit git.
* percent_error_similar est un nombre entre 0 et 1 qui active l'aide qui écrira un commentaire d'aide dans le fichier TODO. Ceux-ci présenteront des chaînes similaires qui sont déjà traduites, pour vous permettre de choisir des morceaux qui sont déjà traduits pour éviter de refaire tout le travail. C'est le pourcentage de différence autorisé (0 = identique, 1 = tout, 0.5 = pas plus de la moitié de la chaîne est différente), en utilisant (distance levenshtein / longueur msgid).
* max_similar : nombre maximum de traductions d'aide par élément.
* language et language_code : texte à inclure dans l'en-tête.

### 2) lancer l'utilitaire
* Vous devez avoir python (v3). Vous pouvez le télécharger si vous ne l'avez pas.
* Ouvrez une console
* Allez dans le répertoire de localisation (cd),
* Exécutez 'python pom_merger.py'.
  * utilisez **python3** si python est l'executable de la version V2 de python
  * vous pouvez utiliser le chemin complet de python.exe si vous venez de l'installer et qu'il n'est pas dans votre chemin. Il est installé par défaut dans vos appdata sous Windows.
Il vous dira si vous avez fait des erreurs sur les chemins, le nombre de traductions réutilisées et le nombre à faire.

### 3) compléter le dossier de traduction
Ensuite, vous devez ouvrir le fichier ***fr/todo.po*** et compléter toutes les traductions. 
* Les lignes msgid sont les chaînes de caractères anglaises
* msgstr est la chaîne traduite, qui doit être une chaîne vide ("").

Important: 
* vous devez l'écrire sur une seule ligne, utilisez '\n' pour entrer un changement de ligne. 
* les %1, %2, ... DOIVENT aussi être mis dans la traduction, car c'est un espace réservé pour les nombres d'entrée, si l'un d'entre eux est oublié, le logiciel se plantera, donc soyez prudent. '%%' est le moyen d'écrire '%' sans faire planter le programme. L'utilitaire doit vous avertir de chaque traduction qui comporte un nombre différent de '%'.


### 4) relancer l'utilitaire

Vous pouvez copier/sauvegarder le todo.po dans un autre fichier en cas de.
Après avoir rempli le fichier todo, modifiez le settings.ini :

```
data = fr/todo.po
data = fr/Slic3r.po
data = MyKnowledgeBase.po

database_out = MyKnowledgeBase.po

ui_dir = ../ui_layout
allow_msgctxt = false
ignore_case = false
remove_comment = true
percent_error_similar = 0.4
max_similar = 3
language = french
language_code = fr

input = Slic3r.pot
todo = fr/todo.po
output = fr/Slic3r.po
```

Cela vous indiquera d'utiliser votre todo et votre Slic3r.po nouvellement créé/édité avant d'utiliser l'autre ancien fichier pour compléter les chaînes non trouvées. Une traduction du troisième fichier n'effacera pas celle du deuxième, sauf si elle est vide (moins de 3 caractères) et que la nouvelle ne l'est pas. Si une traduction est remplacée, l'outil vous en informe.

Et relancez l'utilitaire.

Répétez (si nécessaire) jusqu'à ce que vous n'ayez presque plus rien dans votre fichier todo.po (les traductions d'une lettre comme "." ne sont pas copiées par l'utilitaire)

Quand vous avez terminé, compilez votre .po avec la commande `msgfmt Slic3r.po -o SuperSlicer.mo`.
Vous pouvez alors lancer SuperSlicer pour le tester.
Notez que vous devez le renommer en SuperSlicer.mo si vous utilisez Superslicer et de même pour PrusaSlicer.

## B) Mettre à jour un fichier .po existant


* Ouvrez le fichier .po problématique dans un éditeur de texte.
* Recherchez la phrase incriminée.
* Modifiez la phrase traduite (à droite de 'msgstr').
  * Notez que vous devez conserver un '"' de chaque côté de chaque ligne, mais vous pouvez concaténer plusieurs lignes en une seule si vous préférez.
  * Vous pouvez utiliser '\n' pour ajouter une 'nouvelle ligne' dans votre phrase.
* Une fois terminé, compilez votre .po en .mo et remplacez le .mo actuel.
* Ouvrez SuperSlicer et vérifiez que votre phrase fonctionne. Si SuperSlicer se plante, c'est probablement une erreur.
* Soumettez votre modification en ouvrant un problème (cherchez avant 'is:issue translation' dans la barre de recherche des problèmes, pour reprendre un problème existant s'il existe).
