# solid_infill_extrusion_width

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : Largeur et Débit - Largeur d'extrusion
* Mode : Avancé

## *Remplissage plein* Largeur

### Description

Définissez cette option sur une valeur non nulle pour définir une largeur d'extrusion manuellement pour le remplissage des couches pleines. 

Si elle est laissée à zéro, la [largeur d'extrusion par défaut](extrusion_width.md) sera utilisée  si elle est définie, sinon 1,125 x  [diamètre de la buse](nozzle_diameter.md)  sera utilisé. 
Si elle est exprimée en pourcentage  (par exemple 110 %), elle sera calculée sur le [diamètre de la buse](nozzle_diameter.md) .

Vous pouvez définir soit  ***[Espacement](solid_infill_extrusion_spacing.md)*** , soit ***[Largeur](solid_infill_extrusion_width.md)*** ; l'autre sera calculé, en utilisant  la [hauteur de couche](layer_height.md) par défaut.

[Retour Liste variables](variable_list.md)