# seam_position

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe) - [Avancé](../print_settings/print_settings.md#avancé)
* Mode : Simple

##  Position des jointures

### Description

Détermine le point de départ de chaque boucle de périmètre, et donc la position de la **jointure verticale** potentiellement visible sur le côté de l'objet. Sauf si vous imprimez en mode vase spirale.

La jointure ressemble à une petite goutte sur la surface du modèle. SuperSlicer peut tenter de masquer la jointure dans les bords du modèle (en utilisant le réglage "**Le plus proche**”) ou sur la face arrière (“**Arrière**"), de les répartir aléatoirement sur la surface ("**Aléatoire**”), disposés en lignes (“**Aligné**”) ou Selon des critères de coût (**Basé sur les coûts**).

Dans le cas où la position de la jointure est basée sur les coûts, il est possible de définir deux « Coûts » :

- Un **Coût du déplacement** de l'extrudeuse. La pénalité la plus élevée est lorsque le point est le plus éloigné de la position de l'extrudeuse avant l'extrusion du périmètre externe.
- Un Coût du placement de la couture à un mauvais **Angle**. Le pire angle (pénalité maximale) est quand il est plat.

A moins que vous n'imprimiez en mode "vase en spirale", chaque boucle du périmètre doit commencer et se terminer quelque part. Ce point de départ/fin crée une couture verticale potentiellement visible sur le côté de l'objet. C'est ce qu'on appelle communément des boutons, des coutures de couches ou des cicatrices.

Cette couture sera particulièrement visible si la forme de l'objet est cylindrique, sans angles vifs.

Afin de masquer le plus possible la couture, plusieurs options de placement de la couture sont disponibles dans : [**Paramètres d'impression - Périmètres et enveloppe- Avancé -Jointures.**](#jointures)



[Retour Liste variables](variable_list.md)