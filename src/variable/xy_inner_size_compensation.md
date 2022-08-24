# xy_inner_size_compensation

* Technologie : FDM & SLA
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Couche](../print_settings/print_settings.md#couche) - [Modifications des couches](../print_settings/print_settings.md#modifications-des-couches)
* Mode : Expert

## Compensation en XY intérieur

### Description

L'objet sera agrandi/rétréci dans le plan XY de la valeur configurée (négatif = vers l'intérieur, positif = vers l'extérieur). Cela peut être utile pour régler les dimensions des pièces et les ajustements entre assemblages.

Celui-ci ne s'applique qu'aux parties **internes** de l'objet.

**!!! les trous horizontaux créés des sections ouvertes transformant ces zones en zones extérieures !!!** La compensation n'est donc plus appliquée dans ce cas

![trou dans le modèle la compensation ne s'applique plus](./images/xy_inner_size_compensation/001.png)


![Section ouverte](Images/hole_size_compensation/002.png)



[Retour Liste variables](variable_list.md)
