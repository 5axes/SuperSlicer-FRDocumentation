# between_objects_gcode

* Technologie : FDM
* Groupe : Réglages de l'Imprimante
* Sous groupe : G-Code personnalisé
* Mode : Expert

## Entre le G-Code des objets ( Pour une impression séquentielle)

### Description

Ce code est inséré entre des objets lorsque vous utilisez l'impression séquentielle.
Par défaut la température de l'extrudeuse et du plateau est réinitialisée et utilise la commande sans-attente;  toutefois si des commandes M104, M109, M140 ou M190 sont détectées dans ce code personnalisé,  SuperSlicer n'ajoutera pas de commandes de température. Notez que vous pouvez utiliser des variables génériques pour tous les réglages de SuperSlicer, donc vous pouvez entrer une commande "M109S[ [first_layer_temperature](first_layer_temperature.md) ]" où vous le souhaitez.


[Retour Liste variables](variable_list.md)