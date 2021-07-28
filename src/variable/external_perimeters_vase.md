# external_perimeters_vase

* Technologie : FDM
* Groupe : Réglages de l'Impression
* Sous groupe : Périmètres et enveloppe - Périmètre extérieur en premier
* Mode : Expert

## En mode vase 

### Description


Imprimez les périmètres de contour en deux cercles de manière continue, un peu comme pour le mode vase.
Il faut que le paramètre [external_perimeters_first](external_perimeters_first.md) soit actif.
Ne fonctionne pas pour la première couche, car cela pourrait endommager le plateau.
Remarquez qu'il utilisera [min_layer_height](min_layer_height.md) de votre configuration matérielle comme hauteur de base  (elle ne commence pas à 0). Veillez donc à indiquer la valeur la plus basse possible que votre imprimante puisse gérer.
Si sa hauteur n'est pas inférieure à deux fois la hauteur actuelle de la couche, l'algorithme normal est utilisé,  car il n'y a pas assez de place pour effectuer deux boucles.
Par exemple, pour que cet algorithme ai un vrai impact, il faut que la hauteur minimale soit au moins à 0.05 pour une hauteur de couche de 0.2.


[Retour Liste variables](variable_list.md)