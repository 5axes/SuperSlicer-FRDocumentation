# full_fan_speed_layer

* Technologie : FDM
* Groupe : [Réglages du Filament](../filament_settings/filament_settings.md)
* Sous groupe : [Refroidissement](../filament_settings/filament_settings.md#refroidissement) - Vitesse du ventilateur par défaut
* Mode : Expert

## Ventilateur à pleine vitesse pour la couche *X*

### Description

La vitesse du ventilateur va augmenter de façon linéaire en partant de zéro pour la couche [disable_fan_first_layers](disable_fan_first_layers.md) jusqu'au maximum pour la couche [full_fan_speed_layer](full_fan_speed_layer.md). 

![Ventilateur à pleine vitesse pour la couche ](./images/fan_management/004.svg)

[full_fan_speed_layer](full_fan_speed_layer.md) sera ignorée si inférieure à [disable_fan_first_layers](disable_fan_first_layers.md), auquel cas le ventilateur fonctionnera à la vitesse maximum autorisée pour la couche [disable_fan_first_layers](disable_fan_first_layers.md) +1. 

![Ventilateur désactivée pour les X premières couches](./images/fan_management/007.svg)



[Retour Liste variables](variable_list.md)
