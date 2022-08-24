# enforce_full_fill_volume

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe) - Coques Horizontales
* Mode : Expert

## S'assurer que le remplissage sont à 100% du volume

### Description

Option expérimentale qui modifie (en remplissage plein) le débit de remplissage pour avoir la quantité exacte de plastique à l'intérieur du volume à remplir  (le débit varie généralement de -7% à + 4%, en fonction de la taille de la surface à remplir et du paramètre de chevauchement,  mais il peut aller jusqu'à + 50% pour le remplissage dans de très petites zones où la couverture rectilinéaire n’est pas bonne).

Il présente l'avantage de supprimer la sur-extrusion causée par le paramètre de chevauchement dans les surfaces de remplissage étroites

Dans l'image ci dessous on peut voir l'effet du paramètre. la modification de la largeur d'extrusion est mineure mais réelle. 

![Comparaison de 2 fichiers GCode](Images/enforce_full_fill_volume/001.png)

A gauche avec l'option activée, A droite sans .  Avec l'activation la largeur programmé de 0.45 va devenir 0.452182 soit 0.5% d'écart.


* Valeur par défaut à Vraie.

[Retour Liste variables](variable_list.md)