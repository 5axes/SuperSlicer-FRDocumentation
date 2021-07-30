# top_infill_extrusion_width

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Largeur et Débit](../print_settings/print_settings.md#largeur-et-débit) - Largeur d'extrusion
* Mode : Avancé

## *Remplissage du dessus* Largeur

### Description

Définissez cette option sur une valeur non nulle pour définir une largeur d'extrusion manuellement pour le remplissage des surfaces du dessus. Vous pouvez utiliser des extrudats plus fins pour remplir toutes les régions étroites  et obtenir une finition plus lisse. Si vous laissez la valeur zéro, la largeur d'extrusion par défaut  sera utilisée si elle est définie, sinon le diamètre de la buse sera utilisé. 
Si elle est exprimée en pourcentage (par exemple 110%), elle sera calculée sur le [diamètre de la buse](nozzle_diameter.md).

Vous pouvez définir soit ***[Espacement](top_infill_extrusion_spacing.md)***, soit ***[Largeur](top_infill_extrusion_width.md)*** ; l'autre sera calculé, en utilisant la [hauteur de couche](layer_height.md) par défaut.

[Retour Liste variables](variable_list.md)