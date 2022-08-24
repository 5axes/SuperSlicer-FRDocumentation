# wall_split_middle_threshold

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe)  - Paramètres Arachne 
* Mode : Avancé

## Périmètres

### Description

La plus petite largeur d'extrusion, en tant que facteur de la largeur d'extrusion normale, au-dessus de laquelle un périmètre moyen (s'il n'y en avait pas déjà un) sera ajouté. 

Lors de l'impression de pièces fines, SuperSlicer ajuste la largeur des lignes de parois pour s'adapter à la largeur exacte du modèle. SuperSlicer peut également décider d'utiliser moins de lignes de paroi à la place. Ce paramètre est le seuil à partir duquel SuperSlicer scinde une ligne centrale unique en deux, lorsque la largeur de la pièce augmente. Il peut être réglé séparément du [seuil auquel une nouvelle ligne centrale est ajoutée](wall_add_middle_threshold.md).

Ce paramètre est identique au paramètre [Largeur minimale de la ligne de paroi paire](min_even_wall_line_width.md), mais utilise une unité différente. L'unité de ce paramètre est exprimée en fractions de largeur de ligne que la largeur d'une pièce doit augmenter pour diviser la ligne centrale en deux. Comme la différence de largeur est répartie sur les deux lignes du milieu après la division, une largeur minimale de ligne de parois paire plus petite équivaut à un seuil de ligne du milieu divisé beaucoup plus petit que dans le cas de la suppression d'un cordon impair.

![La ligne centrale est élargie pour s'adapter](./images/min_wall_line_width_0_34.png)
![En réduisant ce paramètre, il utilise plutôt deux lignes](./images/min_wall_line_width_even_0_1.png)

Nombre de lignes paires ou impaires
----
Ce paramètre permet d'ajuster le seuil d'ajout de lignes spécifiquement lorsqu'il devient un nombre pair de lignes. C'est le cas lorsqu'il y a deux lignes au centre plutôt qu'une seule ligne. Il détermine le moment où une ligne au centre se divise en deux lignes.

Le seuil de séparation d'une ligne médiane peut être différent du seuil d'ajout d'une ligne centrale en raison de la manière dont elles se rejoignent. Les lignes paires se rejoignent à leurs extrémités en faisant en sorte que les extrémités se rapprochent. Il y a un certain chevauchement avec ces lignes à cet endroit, ce qui entraîne une surextrusion. Ceci est différent de la situation où il y a un nombre impair de cordons : La ligne du milieu s'arrête alors tout simplement, laissant un vide dans l'impression. La réduction du seuil de séparation de la ligne centrale réduit la surextrusion aux transitions entre les lignes paires et impaires. La réduction du seuil d'ajout de ligne médiane réduit la taille de l'écart aux transitions entre les lignes paires et impaires.

Les vides laissés lors de l'ajout d'une ligne médiane sont plus visibles dans le résultat final qu'un peu de surextrusion au niveau d'un joint, il pourrait donc être utile de définir le Seuil de la ligne médiane divisée un peu plus haut que le Seuil de la ligne médiane ajoutée.

La réduction de ce paramètre conduit à:
* Réduction de la zone de chevauchement où deux lignes se rejoignent pour se fondre en une seule ligne.
* Réduction de la largeur maximale des lignes centrales uniques.
* Des lignes plus fines, qui peuvent ne pas bien s'extruder.
* Plus de lignes, qui prennent plus de temps à imprimer.

Réduisez ce paramètre pour utiliser des périmètres plus nombreux et plus fins. Augmentez-le pour utiliser moins de périmètres, périmètres plus larges. Notez que cela s'applique -comme si- la forme entière devait être remplie de périmètre, donc le milieu ici fait référence au milieu de l'objet entre deux bords extérieurs de la forme, même s'il y a effectivement un remplissage ou d'autres types d'extrusion dans l'impression au lieu du périmètre.


[Retour Liste variables](variable_list.md)