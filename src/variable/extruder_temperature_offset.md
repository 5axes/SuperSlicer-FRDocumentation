# extruder_temperature_offset

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Extrudeuse](../printer_settings/printer_settings.md#extrudeuse) - Décalages (pour les imprimantes multi-extrudeuse)
* Mode : Expert

## Décalage de la température de l'extrudeuse

### Description

Ce décalage sera ajouté à toutes les températures d'extrusion définies par le réglage filament.

Notez que vous devez définir 
  
  'M104 S{first_layer_temperature[initial_extruder]+ extruder_temperature_offset[initial_extruder]}' 
  
  au lieu de 
  
  'M104 S[ [first_layer_temperature](first_layer_temperature.md) ]' 
  
  dans le [start_gcode](start_gcode.md).

[Retour Liste variables](variable_list.md)
