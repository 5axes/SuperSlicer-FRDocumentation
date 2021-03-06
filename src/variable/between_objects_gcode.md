# between_objects_gcode

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## Entre le G-Code des objets ( Pour une impression séquentielle)

### Description

Ce code est inséré entre des objets lorsque vous utilisez l'impression séquentielle.

Par défaut la température de l'extrudeuse et du plateau est réinitialisée et utilise la commande sans-attente;  toutefois si des commandes [M104](https://marlinfw.org/docs/gcode/M104.html), [M109](https://marlinfw.org/docs/gcode/M109.html), [M140](https://marlinfw.org/docs/gcode/M140.html) ou [M190](https://marlinfw.org/docs/gcode/M190.html) sont détectées dans ce code personnalisé,  SuperSlicer n'ajoutera pas de commandes de température. 

Notez que vous pouvez utiliser des  [variables génériques](variable_list.md) pour tous les réglages de SuperSlicer, donc vous pouvez entrer une commande du type "M109S[ [first_layer_temperature](first_layer_temperature.md) ]" où vous le souhaitez.


[Retour Liste variables](variable_list.md)
