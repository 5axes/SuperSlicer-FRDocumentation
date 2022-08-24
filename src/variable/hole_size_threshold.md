# hole_size_threshold

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Couche](../print_settings/print_settings.md#couche) - [Modifications des couches](../print_settings/print_settings.md#modifications-des-couches)
* Mode : Expert

## Seuil de compensation du rétrécissement des trous verticaux

### Description

Zone maximale pour le trou où la [compensation du rétrécissement des trous verticaux](hole_size_compensation.md) s'appliquera pleinement. 

Après cela, la compensation  se  réduira progressivement à 0 jusqu'au trous ayant quatre fois cette surface. 

Exemple pour un seuil à 50mm² et une compensation extrême de +6 mm (les trous devrais tous disparaître.)

![Diamètre des trous convexes](Images/hole_size_threshold/001.svg)

Les trous de 6 et 8 vont disparaitre à la découpe. Les trous de 10 et 12 vont être compensé progressivement.

![Compensation seuil 50mm²](Images/hole_size_threshold/002.svg)

Si l'on fixe cette valeur de seuil à 113mm² cette fois tous les **trous convexes** disparaissent bien.

![Compensation seuil 113mm²](Images/hole_size_threshold/003.svg)

<!-- > Réglez à 0 pour laisser la compensation de la taille du trou s'appliquer entièrement à tous les trous détectés. -->

* Valeur par défaut : 100 mm²  (soit les trous inférieur à un diamètre 11 mm)

[Retour Liste variables](variable_list.md)