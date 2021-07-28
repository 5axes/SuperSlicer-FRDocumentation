# full_fan_speed_layer

* Technologie : FDM
* Groupe : Réglages du Filament
* Sous groupe : Refroidissement - Réglages du ventilateur par défaut
* Mode : Expert

## Ventilateur à pleine vitesse pour la couche

### Description

La vitesse du ventilateur va augmenter de façon linéaire en partant de zéro pour la couche [disable_fan_first_layers](disable_fan_first_layers.md) jusqu'au maximum pour la couche [full_fan_speed_layer](full_fan_speed_layer.md). [full_fan_speed_layer](full_fan_speed_layer.md) sera ignorée si inférieure à [disable_fan_first_layers](disable_fan_first_layers.md), auquel cas le ventilateur fonctionnera à la vitesse maximum autorisée pour la couche [disable_fan_first_layers](disable_fan_first_layers.md) +1. 

[Retour Liste variables](variable_list.md)