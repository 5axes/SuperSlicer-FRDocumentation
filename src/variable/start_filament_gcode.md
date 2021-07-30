# start_filament_gcode

* Technologie : FDM
* Groupe : [Réglages du Filament](../filament_settings/filament_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## G-Code de début

### Description

Cette procédure de démarrage est insérée au début, après un gcode de démarrage de l'imprimante  (et après tout changement de filaments vers ce filament, si vous utilisez l'option multi-matériaux).

Elle est utilisée pour remplacer les réglages pour un filament spécifique.

Si SuperSlicer détecte des commandes M104, M109, M140 ou M190 dans vos codes personnalisés ces commandes ne seront pas ajoutées automatiquement,  de cette manière vous pouvez personnaliser la procédure de chauffe et autres actions.

Notez que vous pouvez utiliser des variables génériques pour tous les réglages de SuperSlicer,  donc vous pouvez saisir une commande "M109 S[[first_layer_temperature](first_layer_temperature.md)] " où vous voulez.

Si vous avez plusieurs extrudeuses, le G-Code sera exécuté dans l'ordre des extrudeuses.

[Retour Liste variables](variable_list.md)