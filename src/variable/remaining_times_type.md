# remaining_times_types

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Général](../printer_settings/printer_settings.md#général) - [Firmware](../printer_settings/printer_settings.md#firmware)
* Mode : Expert
* Version : 2.3.57.4

## Types Temps restant

### Description

2 modes disponibles , le premier pour les imprimantes Prusa utilie le code M73 :

M73: Émet M73 P[pourcentage imprimé] R[temps restant en minutes] à 1 minute d'intervalle dans le G-Code afin que le firmware puisse indiquer précisément le temps restant. Jusqu'à présent seul le firmware Prusa i3 MK3 reconnait M73. 

Par ailleurs le firmware i3 MK3 supporte M73 Qxx Sxx pour le mode silencieux.

Pour les imprimantes fonctionnant avec Marlin : 

M117: Emet une commande pour afficher un message à l'imprimante, du type 'Time Left .h..m..s'.

[Retour Liste variables](variable_list.md)
