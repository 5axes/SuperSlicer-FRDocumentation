# perimeter_extrusion_width

* Technologie : FDM
* Groupe : Réglages de l'Impression
* Sous groupe : Largeur & Débit - Largeur d'extrusion
* Mode : Avancé

## *Périmètre* Largeur

### Description

Définissez ce paramètre sur une valeur non nulle pour définir une largeur d'extrusion manuellement pour les périmètres. 
Vous pouvez vouloir utiliser des cordons plus fins pour obtenir des surfaces plus précises. Si vous laissé à zéro, la [largeur d'extrusion par défaut](extrusion_width.md) sera utilisée si elle est définie, sinon 1,125 x  [diamètre de la buse](nozzle_diameter.md)  sera utilisé. Si elle est exprimée en pourcentage (par exemple 105%) elle sera calculée sur le  [diamètre de la buse](nozzle_diameter.md) .

Vous pouvez définir soit ***[Espacement](perimeter_extrusion_spacing.md)***, soit ***[Largeur](perimeter_extrusion_width.md)*** ; l'autre sera calculée en utilisant les pourcentages de  [Chevauchement du périmètre](perimeter_overlap.md)  et la [hauteur de couche](layer_height.md) par défaut.


[Retour Liste variables](variable_list.md)