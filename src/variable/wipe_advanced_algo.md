# wipe_advanced_algo

* Technologie : FDM
* Groupe : Purge
* Sous groupe : -
* Mode : Expert

##  Algorithme de purge automatique

### Description

Choix de l'algorithme de purge  avancé.

#### Algorithme disponible
 - Linear :  volume = nozzle_volume + volume_multiplier  * (pigmentBefore-pigmentAfter)
 - Quadratic : volume = nozzle_volume + volume_multiplier  * (pigmentBefore-pigmentAfter)+ volume_mult  * (pigmentBefore-pigmentAfter)^3
 - Hyperbola : volume = nozzle_volume + volume_multiplier  * (0.5+pigmentBefore) / (0.5+pigmentAfter)

[Retour Liste variables](variable_list.md)