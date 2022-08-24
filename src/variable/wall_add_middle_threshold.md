# wall_add_middle_threshold

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe)  - Paramètres Arachne 
* Mode : Avancé

## Seuil d'ajout d'un paramètre médian

### Description

La plus petite largeur d'extrusion, en tant que facteur de la largeur d'extrusion normale, au-dessus de laquelle le périmètre central (s'il y en a un) sera divisé en deux. 

Lors de l'impression de pièces fines, SuperSlicer ajuste la largeur des lignes de parois pour s'adapter à la largeur exacte du modèle. SuperSlicer peut également décider d'utiliser moins de lignes de parois à la place. Ce paramètre est le seuil à partir duquel SuperSlicer ajoutera une ligne au centre. Il peut être réglé séparément du [seuil auquel les deux lignes du milieu se combinent](wall_split_middle_threshold.md).

Ce paramètre est identique au paramètre de [largeur minimale de la ligne de paroi impaire](min_odd_wall_line_width.md), mais utilise une unité différente. L'unité de ce paramètre est exprimée en fractions de largeur de ligne que la largeur d'une pièce doit augmenter pour ajouter une nouvelle ligne centrale.

![Lorsque la ligne centrale est trop petite, les deux lignes qui l'entourent sont élargies.](./images/min_wall_line_width/min_wall_line_width_0_34.png)
![En réduisant ce réglage, la ligne centrale commence et finit beaucoup plus petit](./images/min_wall_line_width/min_wall_line_width_odd_0_1.png)

Nombre de lignes paires ou impaires
----
Ce paramètre permet d'ajuster le seuil d'ajout de lignes spécifiquement lorsqu'il devient un nombre impair de lignes. C'est-à-dire lorsqu'il y a une seule ligne au centre plutôt que deux. Il détermine quand une nouvelle ligne est ajoutée entre les deux lignes centrales.

Le seuil pour l'ajout d'une ligne centrale peut être différent du seuil pour la division de la ligne centrale en deux, en raison de leur mode de transition. Lorsqu'une ligne impaire est ajoutée, elle ne commence que lorsque les deux lignes environnantes lui ont fait de la place. Pendant la transition, il y a un petit espace où les lignes environnantes n'ont pas encore fait assez de place. C'est différent de ce qui se passe lorsqu'il y a un nombre pair de cordons : La ligne du milieu se sépare alors en deux, et ces deux lignes se chevauchent légèrement jusqu'à ce qu'elles soient suffisamment éloignées. Réduire le seuil d'ajout de ligne médiane réduit la taille de l'écart aux transitions entre les lignes paires et impaires. Réduire le seuil de séparation de la ligne médiane réduit la surextrusion aux transitions entre les lignes paires et impaires.

Les vides laissés au début d'une ligne impaire sont plus visibles dans le résultat final qu'un peu de surextrusion au niveau d'un joint. Il pourrait donc être utile de définir le seuil d'ajout de ligne médiane un peu plus bas que le seuil de séparation de ligne médiane.

La réduction de ce paramètre conduit à:
* Espaces plus petits lorsqu'une ligne centrale se termine.
* Largeur maximale réduite d'une paire de lignes centrales paires.
* Des lignes plus fines, qui risquent de ne pas bien s'extruder.
* Des lignes plus longues, qui prennent plus de temps à imprimer.

Réduisez ce paramètre pour utiliser des périmètres plus nombreux et plus fins. Augmentez-le pour utiliser des périmètres moins nombreux et périmètres plus larges. Notez que cela s'applique -comme si- la forme entière devait être remplie de périmètre, donc le milieu ici fait référence au milieu de l'objet entre deux bords extérieurs de la forme, même s'il y a effectivement un remplissage ou d'autres types d'extrusion dans l'impression au lieu du périmètre.


[Retour Liste variables](variable_list.md)
