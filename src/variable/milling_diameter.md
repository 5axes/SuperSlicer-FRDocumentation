# milling_diameter

* Technologie : FDM
* Groupe : Réglages de l'Imprimante
* Sous groupe : Milling - Taille
* Mode : Avancé

## Diamètre de fraisage

### Description

Diamètre de l'outil de fraisage. Le paramètre est disponible sous le forme de tableau.

Exemple d'appel du diamètre de fraisage `M6 T {current_extruder} D{milling_diameter[next_extruder]}`

La valeur de [milling_count](milling_count.md) doit être > 0 pour que le paramètre soit accessible.

[Retour Liste variables](variable_list.md)