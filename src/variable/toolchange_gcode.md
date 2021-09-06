# toolchange_gcode

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## G-Code de changement d'extrudeuse

### Description

Ce code personnalisé est inséré à chaque changement d'extrudeuse.
Si vous ne laissez pas ce champ vide, vous devrez vous occuper du code de changement de la buse vous-même.
SuperSlicer ne fournira aucun autre code G pour changer le filament.
Vous pouvez utiliser des variables de substitution pour toutes les  [variables génériques](variable_list.md)  SuperSlicer, ainsi que pour [[previous_extruder](previous_extruder.md)] et [[next_extruder](next_extruder.md)] , par exemple.

La commande standard toolchange peut être écrite sous la forme T [[next_extruder](next_extruder.md)].

**!! Attention !! Si un quelconque caractère est écrit ici, SuperSlicer n'écrira aucun G-code de changement d'extrudeuse par lui-même.**

[Retour Liste variables](variable_list.md)