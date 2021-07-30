# first_layer_extrusion_width

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : Largeur et Débit - Largeur d'extrusion
* Mode : Avancé

## *Première couche* Largeur

### Description

Définissez ce paramètre à une valeur non nulle pour définir une largeur d'extrusion manuelle pour la première couche. Vous pouvez l'utiliser pour forcer des cordons plus gros pour une meilleure adhérence. 

Si elle est exprimée en pourcentage (par exemple 140%), elle sera calculée sur le [diamètre de la buse](nozzle_diameter.md) utilisée pour le type d'extrusion.

> Si elle est définie à zéro, il utilisera la largeur d'extrusion par défaut.

Vous pouvez définir soit ***[Espacement](first_layer_extrusion_spacing.md)***, soit  ***[Largeur](first_layer_extrusion_width.md)***  ; l'autre sera calculée en utilisant les pourcentages de  [Chevauchement du périmètre](perimeter_overlap.md)  et la [hauteur de couche](layer_height.md) par défaut.

* Valeur par défaut : 140 %


[Retour Liste variables](variable_list.md)