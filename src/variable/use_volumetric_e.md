# use_volumetric_e

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Général](../printer_settings/printer_settings.md#général) - Avancé
* Mode : Expert

## E volumétrique

### Description

Cette fonction expérimentale génère des valeurs de E en millimètres cubiques au lieu de millimètres linéaires.
Si votre firmware ne connait pas déjà le diamètre du filament, vous pouvez saisir une commande comme 'M200 D[filament_diameter_0] T0' dans votre G-Code de début pour activer le mode volumétrique, et utiliser le diamètre de filament associé au filament choisi dans SuperSlicer.

 Cette fonction n'est utilisable que dans les versions récentes de Marlin.


[Retour Liste variables](variable_list.md)