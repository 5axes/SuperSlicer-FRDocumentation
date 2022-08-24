# wipe_inside_end

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Extrudeuse](../printer_settings/printer_settings.md#extrudeuse) - [Essuyage générale](../printer_settings/printer_settings.md#Essuyage_générale)
* Mode : Avancé
* Version : 2.4.X

## Essuyer à la fin

### Description

Ce paramètre permet de nettoyer légèrement la buse après la fin de l'extrusion d'un périmètre extérieur en la déplacant vers l'intérieur de la pièce. L'essuyage supplémentaire  est d'abord exécuté (wipe_extra_perimeter), puis celui-ci et enfin l'essuyage dûe à la rétraction du filament.

A noter que si ce paramètre est désactivé, l'essuyage de la rétraction suivra la ligne centrale du périmètre extérieur, et pas la ligne virtuelle qui part de la fin de cet essuyage.

[Retour Liste variables](variable_list.md)
