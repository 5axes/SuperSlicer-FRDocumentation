# solid_over_perimeters

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe)  - Coques horizontales
* Mode : Simple

## PAs de remplissage plein si plus de

### Description

Lorsque vous avez un nombre moyen/haut de couches pleines supérieures/inférieures, et un nombre faible/moyen de périmètres, alors il faut mettre du remplissage plein à l'intérieur de la pièce "
"pour avoir assez de couches solides.


En fixant cette valeur à un niveau supérieur à 0, vous pouvez supprimer ce 'remplissage intérieur'. 
Ce nombre permet d'en garder si le nombre de 'périmètre au-dessus du vide' est faible.


Si ce paramètre est égal ou supérieur au nombre de couches pleines supérieures et inférieures, il n'enlévera rien.

Si ce paramètre est réglé sur 1, il enlévera toutes les couches pleines qui sont seulement au-dessus des périmètres.

Mettez à zéro pour le désactiver.


[Retour Liste variables](variable_list.md)