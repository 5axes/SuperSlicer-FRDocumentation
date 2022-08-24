# support_material_auto

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Support](../print_settings/print_settings.md#support) 
* Mode : Simple

## Supports générés automatiquement

### Description

Activer la génération des supports.

Les imprimantes 3D avec fabrication de filaments fondus fonctionnent en plaçant des cordons de plastique fondu qui s'empile les uns sur les autres. Si ce plastique n'est pas soutenu, il va s'affaisser à cause de la gravité. À moins que le modèle ne se trouve en dessous pour soutenir la nouvelle couche, il devra être soutenu par une structure de support supplémentaire, qui sera enlevée et jetée après l'impression du modèle.

Ce réglage permet de créer des structures de support pour soutenir les couches qui sont créés pendant l'impression. 

![Structure de support pour soutenir le modèle pendant l'impression](./images/support_material_auto/support_enable.png)

L'impression d'un support prend beaucoup de temps et de matière. Lorsque le support touche le modèle, il doit être enlevé plus tard, une fois l'impression terminée. Cela a tendance à laisser des marques sur la surface.

Cependant, le support est parfois complètement nécessaire. Par exemple, si le modèle comporte une partie isolée qui pointe vers le bas, ce morceau serait sinon simplement suspendu dans le vide.

#### Conception pour empêcher le support

Bien que cela soit parfois nécessaire, il convient d'éviter autant que possible les supports d'impression. Il existe de nombreuses techniques pour éviter d'avoir à imprimer un support. Il s'agit d'une grande partie de la conception des modèles pour l'impression en 3D. Voici quelques techniques permettant de modifier votre modèle 3D pour éviter d'avoir besoin d'un support.
* Orientez votre modèle de manière à ce qu'il n'y ait pas de surfaces planes plus hautes que la plaque de construction.
* Évitez autant que possible de concevoir des dépouilles ou des portes-à-faux.
* Les plus grands portes-à-faux peuvent être franchis s'ils sont soutenus des deux côtés. SuperSlicer orientera automatiquement les lignes du côté inférieur de ce surplomb de manière à ce qu'elles passent en ligne droite au-dessus du pont. Pendant l'impression de ces lignes, la buse maintiendra la tension sur le cordon de manière à ce qu'il ne s'affaisse pas. Cela lui donne ensuite suffisamment de temps pour se solidifier afin qu'il puisse tenir tout seul.
* S'il y a un vide dans le surplomb, un pont sacrificiel peut être conçu. Il s'agit d'une couche dans laquelle le trou est fermée. Cela permet de construire un  pont, de sorte que la deuxième couche peut construire les parois appropriées sur le pont ainsi créé. Après l'impression, le trou peut être ouverture avec un couteau, puisqu'elle n'a qu'une seule couche d'épaisseur.


[Retour Liste variables](variable_list.md)
