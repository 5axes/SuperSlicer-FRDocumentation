# max_layer_z

* Technologie : Variable générique
* Groupe : -
* Sous groupe : -
* Mode : -

## hauteur maxi de l'impression

### Description

Hauteur maximum de l'impression.

Exemple d'utilisation de la variable :

    {if max_layer_z +32 < max_print_height}G1 Z30{else}G1 Z{max_print_height - max_layer_z -2}{endif}


[Retour Liste variables](variable_list.md)