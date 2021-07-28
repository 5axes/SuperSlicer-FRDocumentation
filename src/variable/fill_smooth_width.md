# fill_smooth_width

* Technologie : FDM
* Groupe : Réglages de l'Impression
* Sous groupe : Remplissage - Options avancés de remplissage
* Mode : Expert

##  Espacement des lignes de lissage

### Description

Il s'agit de la largeur de la passe de lissage, en % de la largeur de l'extrusion du remplissage du dessus, ne doit pas être supérieure à 50% (deux fois plus de lignes, 50% de chevauchement). Il n'est pas nécessaire de descendre en dessous de 25% (quatre fois plus de lignes, 75% de chevauchement). 
Si vous avez des problèmes avec votre processus de lissage, n'oubliez pas de regarder le débit -> débit au-dessus du pont, car ce paramètre doit être réglé à min 110% pour s'assurer d'avoir assez de plastique dans la couche du dessus. Une valeur trop basse fera que votre extrudeuse rognera le filament.

Option active si au moins un des motifs de remplissage  [solid_fill_pattern](solid_fill_pattern.md) , [top_fill_pattern](top_fill_pattern.md) ou [bottom_fill_pattern](bottom_fill_pattern.md) est réglé sur lissage.

* Valeur par défaut : 50 %

[Retour Liste variables](variable_list.md)