# start_gcode

* Technologie : FDM & SLA
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## G-Code de début

### Description

Cette procédure de démarrage est insérée au début, après que le plateau ait atteint la température cible et que l'extrudeuse vient de commencer à chauffer, et avant que l'extrudeuse n'ait fini de chauffer. Si Slic3r détecte M104 ou M190 dans vos codes personnalisés, ces commandes ne seront pas ajoutées automatiquement, vous êtes donc libre de personnaliser l'ordre des commandes de chauffage et des autres actions personnalisées. Notez que vous pouvez utiliser des variables de remplacement pour tous les paramètres Slic3r, vous pouvez donc mettre un \"M109 S[first_layer_temperature](first_layer_temperature.md)\" commande où vous voulez.
Autres variables disponiblent  : [initial_extruder](initial_extruder.md), [total_layer_count](total_layer_count.md), [has_wipe_tower](has_wipe_tower.md), [has_single_extruder_multi_material_priming](has_single_extruder_multi_material_priming.md), [total_toolchanges](total_toolchanges.md), bounding_box[minx,miny,maxx,maxy]"



[Retour Liste variables](variable_list.md)