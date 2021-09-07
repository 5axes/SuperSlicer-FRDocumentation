# infill_anchor

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Remplissage](../print_settings/print_settings.md#remplissage)
* Mode : Avancé

## Ancrage périphérique

### Description

Ce paramètre permet de relier une ligne intercalaire à un périmètre interne avec un court segment d'un périmètre supplémentaire. Si elle est exprimée en pourcentage (exemple : 15 %), elle est calculé sur la largeur d'extrusion du remplissage. 

SuperSlicer tente de relier deux lignes de remplissage proches à un court segment de périmètre. Si aucun un tel segment de périmètre plus court que `infill_anchor_max` n'est trouvé, la ligne de remplissage est connectée à un segment de périmètre sur un seul côté et la longueur du  segment de périmètre pris est limité à ce paramètre, mais pas plus long que `anchor_length_max`.

Définissez ce paramètre sur **zéro** pour désactiver l'ancrage des périmètres connectés à une ligne de remplissage unique.

[Retour Liste variables](variable_list.md)