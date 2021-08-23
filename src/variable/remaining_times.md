# remaining_times

* Technologie : FDM & SLA
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [Général](../printer_settings/printer_settings.md#général) - [Firmware](../printer_settings/printer_settings.md#firmware)
* Mode : Expert

## Temps restant

### Description


Émet M73 P[pourcentage imprimé] R[temps restant en minutes] à 1 minute d'intervalle dans le G-Code afin que le firmware puisse indiquer précisément le temps restant.

Jusqu'à présent seul le firmware Prusa i3 MK3 reconnaît M73. Par ailleurs le firmware i3 MK3 supporte M73 Qxx Sxx pour le mode silencieux.

[Retour Liste variables](variable_list.md)