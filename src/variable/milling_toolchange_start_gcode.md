# milling_toolchange_start_gcode

* Technologie : FDM
* Groupe : Réglages de l'Imprimante
* Sous groupe : Milling - Comportement
* Mode : Avancé

## G-Code pour passer à cette tête de fraisage

### Description

Mettez ici le G-Code pour changer la tête d'outil (appelé après le g-code T [ [next_extruder](next_extruder.md) ] ).  Vous avez accès à [next_extruder](next_extruder.md) et [previous_extruder](previous_extruder.md). [Next_extruder](next_extruder.md) est le 'numéro d'extrudeuse' du nouveau outil de fraisage, il est égal à l'index (commençant à 0) de l'outil de fraisage plus le nombre d'extrudeuses. previous_extruder est le 'numéro d'extrudeuse' de l'outil précédent, il peut s'agir d'une extrudeuse normale, s'il est inférieur au nombre d'extrudeuses. Le numéro d'extrudeuse est disponible à [extruder](extruder.md) et le numéro de la fraise est disponible à [milling_cutter](milling_cutter.md).

La valeur de [milling_count](milling_count.md) doit être > 0 pour que le paramètre soit accessible.

Exemple de code :

`M6 T {current_extruder} D{milling_diameter[next_extruder]}`

[Retour Liste variables](variable_list.md)