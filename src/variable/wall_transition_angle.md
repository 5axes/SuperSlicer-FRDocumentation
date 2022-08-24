# wall_transition_angle

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe)  - Paramètres Arachne 
* Mode : Expert

## Angle de Transition de périmètre

### Description

Quand créer des transitions entre les nombres pairs et impairs de périmètres. A forme de coin avec un angle supérieur à ce paramètre n'aura pas de transitions et aucun périmètre ne sera imprimé au centre pour remplir l'espace restant. 

Cet angle indique l'angle à partir duquel SuperSlicer commence à créer des transitions pour remplir correctement l'espace. Tous les angles qui sont plus aigus que cet angle seront remplis de lignes de largeur variable.

![Plus large que 10°, il ne crée plus de transitions](Images/wall_transition_angle/wall_transition_angle.png)

Ce paramètre permet d'activer ou de désactiver la largeur variable des lignes pour certains angles. Si deux parois opposés sont presque parallèles, plus petits que l'angle spécifié dans ce paramètre, l'espace entre eux est rempli de lignes dont la largeur peut varier. S'ils forment un angle plus grand l'un par rapport à l'autre, l'espace entre eux est rempli de cordons de largeur constante.

Comme toujours, il s'agit d'un compromis. L'utilisation d'une largeur variable présente certains avantages, tels que :
* Il ne laisse aucun vide entre les lignes.
* Il ne remplit pas le même espace plusieurs fois.
* Les dimensions de l'impression seront plus précises à cet endroit.

Cependant, elle présente également certains inconvénients :
* Il introduit des coins dans les pièces fines qui peuvent apparaître comme des ondulations à la surface.
* Cela crée des déplacements supplémentaires.
* L'imprimante peut ne pas modifier avec précision la largeur de la ligne en succession rapide.

Dans la pratique, il est bon de faire en sorte que cet angle soit suffisamment grand pour réduire la taille des espaces dans les angles aigus, comme on peut le voir dans la vue en plan, mais aussi petit que possible par ailleurs. Un angle plus petit donne généralement à la surface un aspect plus lisse.

Il n'est pas possible de réduire l'angle à 0° pour éliminer complètement les largeurs de ligne variables. Les parois parallèles opposées verront toujours leur largeur de ligne ajustée pour s'adapter à l'espace.


Réduire ce paramètre permet de réduire le nombre et la longueur de ces périmètres centraux, mais peut laisser des vides ou des surextrusions.

[Retour Liste variables](variable_list.md)