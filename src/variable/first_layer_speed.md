# first_layer_speed

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Vitesse](../print_settings/print_settings.md#vitesse) - Modificateurs
* Mode : Avancé

## Vitesse pour la première couche par défaut

### Description

Si elle est exprimée en valeur absolue en mm/s, cette vitesse sera appliquée à tous les  mouvements d'impression sauf le remplissage de la première couche. Elle peut être écrasée par la vitesse par 'défaut' (la valeur par défaut dépend du type de trajectoire) si elle est inférieure à elle. 

Si elle est exprimée en pourcentage, elle sera mise à l'échelle de la vitesse actuelle.

Définissez-la à 100% pour supprimer toute modification de la vitesse de la première couche (avec [first_layer_infill_speed](first_layer_infill_speed.md) ).

* Valeur par défaut : 30 mm/s

[Retour Liste variables](variable_list.md)