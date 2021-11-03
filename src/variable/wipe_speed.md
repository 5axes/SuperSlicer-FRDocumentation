# wipe_speed

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Extrudeuse](../printer_settings/printer_settings.md#extrudeuse) - [Rétraction](../printer_settings/printer_settings.md#rétraction)
* Mode : Avancé
* Version : 2.3.57

## Vitesse d'essuyage

### Description

Vitesse en mm/s pour l'essuyage. Si vous l'augmenter, l'essuyage se fera sur une distance plus grande. Le temps d'essuyage est défini par ( 100% - '[rétraction avant essuyage](retract_before_wipe.md)') * '[distance de rétraction](retract_length.md)' / '[vitesse de rétraction](retract_speed.md)'.

Si le paramètre est laissé à 0, la [vitesse de déplacement](travel_speed.md) est alors utilisée.


[Retour Liste variables](variable_list.md)
