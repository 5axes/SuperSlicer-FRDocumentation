# external_perimeter_extrusion_width

* Technologie : FDM
* Groupe : Réglages de l'Impression
* Sous groupe : Largeur & Débit - Largeur d'extrusion
* Mode : Avancé

## *Périmètre extérieur* Largeur

### Description

Définissez ce paramètre sur une valeur non nulle pour définir une largeur d'extrusion manuellement pour les périmètres externes. 
Si elle est laissée à zéro, la [largeur d'extrusion](extrusion_width.md) par défaut sera utilisée si elle est définie, sinon 1,05 x le [diamètre de la buse](nozzle_diameter.md) sera utilisé. 

Si elle est exprimée en pourcentage (par exemple 112,5 %), elle sera calculée sur le [diamètre de la buse](nozzle_diameter.md) .


Vous pouvez définir soit ***[Espacement](external_perimeter_extrusion_spacing.md)***, soit ***[Largeur](external_perimeter_extrusion_width.md)*** ; l'autre sera calculée en utilisant les pourcentages de  [Chevauchement du périmètre](perimeter_overlap.md)  et la [hauteur de couche](layer_height.md) par défaut.


[Retour Liste variables](variable_list.md)