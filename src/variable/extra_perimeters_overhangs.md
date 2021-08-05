# extra_perimeters_overhangs

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe) - [Qualité](../print_settings/print_settings.md#qualité)
* Mode : Avancé

## Périmètres supplémentaires sur les surplombs

### Description

Ajoutez des périmètres supplémentaires si nécessaire pour éviter les vides dans les murs en pente.
SuperSlicer continue d'ajouter des périmètres jusqu'à ce que tous les surplombs soient remplis.

**!! c'est un algorithme très lent !!**

Exemple d'activation sur ce niveau le nombre de périmètres est encore de 2

![extra_perimeters_overhangs x2](./images/extra_perimeters_overhangs/001.png)

Layer suivant passage automatique à 3.

![extra_perimeters_overhangs X3](./images/extra_perimeters_overhangs/002.png)

Layer suivant passage automatique à 4.

![extra_perimeters_overhangsx 4](./images/extra_perimeters_overhangs/003.png)

Si vous utilisez ce paramètre, pensez fortement à utiliser aussi [overhangs_reverse](overhangs_reverse.md).

[Retour Liste variables](variable_list.md)