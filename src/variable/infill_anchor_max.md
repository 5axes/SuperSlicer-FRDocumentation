# infill_anchor_max

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Remplissage](../print_settings/print_settings.md#remplissage)
* Mode : Avancé

## Longueur de la connexion

### Description

Le remplissage est généralement **connecté aux périmètres** avec ce qu’on appelle une ancre, qui consiste en une courte ligne qui constitue un autre périmètre (interne) et qui se transforme en ligne de remplissage. La longueur de l’ancre de remplissage détermine quelle longueur en millimètres de cette ancre sera connectée au remplissage et aux périmètres. 

Si vous réglez cette valeur sur 0, le remplissage sera imprimé indépendamment sur les périmètres. Une valeur plus haute permettra d’imprimer l’ancre en tant que prolongement du remplissage. L’ancre de remplissage aide à améliorer **l’intégrité du modèle et sa solidité**. 

Mettre une valeur de 1000 dans le paramètre **Longueur de la connexion** revient à fixer ce paramètre à illimité ( 0 le désactive)

[Retour Liste variables](variable_list.md)