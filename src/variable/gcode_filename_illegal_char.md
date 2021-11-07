# gcode_filename_illegal_char

* Technologie : FDM & SLA
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Général](../printer_settings/printer_settings.md#général) - [Firmware](../printer_settings/printer_settings.md#firmware)
* Mode : Avancé
* Version : 2.3.57.3

## Caractères illégaux

### Description

Tous les caractères qui sont écrits ici seront remplacés par "_" lors de l'écriture du nom du fichier gcode.

Si le premier caractère est "[" ou "(", alors ce champ sera considéré comme une expression rationnelle regexp (entrez '[^a-zA-Z0-9]' pour utiliser uniquement les caractères ascii).


[Retour Liste variables](variable_list.md)
