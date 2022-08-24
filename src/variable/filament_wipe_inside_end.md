# filament_wipe_inside_end

* Technologie : FDM
* Groupe : [Réglages du Filament](../filament_settings/filament_settings.md)
* Sous groupe : [Rétractions de Filament](../filament_settings/filament_settings.md#rétractions-de-filament)
* Mode : Avancé

## Essuyer à la fin

### Description

Ce paramètre permet de nettoyer légèrment la buse après la fin de l'extrusion d'un périmètre extérieur en la déplacant vers l'intérieur de la pièce. L'essuyage supplémentaire  est d'abord exécuté (wipe_extra_perimeter), puis celui-ci et enfin l'essuyage dûe à la rétraction du filament.

A noter que si ce paramètre est désactivé, l'essuyage de la rétraction suivra la ligne centrale du périmètre extérieur, et pas la ligne virtuelle qui part de la fin de cet essuyage.

[Retour Liste variables](variable_list.md)
