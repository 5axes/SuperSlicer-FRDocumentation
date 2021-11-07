# max_gcode_per_second

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Général](../printer_settings/printer_settings.md#général) - Firmware
* Mode : Expert
* Version : 2.3.57.0

## G1 maximum par seconde

### Description

Si votre firmware s'arrête pendant l'impression, il se peut que sa file d'attente de gcode soit pleine. Définissez 
ce paramètre pour fusionner les extrusions en de plus grandes afin de réduire le nombre de commandes de gcode que l'imprimante doit traiter chaque seconde.

Notez que la réduction de la vitesse d'impression (au moins pour les extrusions externes) réduira le nombre de fois où cela se déclenchera et donc augmentera la qualité."

Mettez à zéro pour désactiver.

> Valeur par defaut 1500

[Retour Liste variables](variable_list.md)
