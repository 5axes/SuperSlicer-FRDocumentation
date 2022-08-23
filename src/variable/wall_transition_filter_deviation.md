# wall_transition_filter_deviation

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Périmètre et enveloppe](../print_settings/print_settings.md#périmètre-et-enveloppe)  - Paramètres Arachne 
* Mode : Expert

## Marge de distance Transition de périmètre

### Description

Empêcher la transition entre un périmètre supplémentaire et un périmètre standard.

Cette marge étend la plage des largeurs d'extrusion qui suivent à [largeur minimale du périmètre - marge, 2 * largeur minimale du périmètre + marge]. L'augmentation de cette marge réduit le nombre de transitions, ce qui réduit le nombre de démarrages/arrêts d'extrusion et le temps de déplacement. Cependant, une grande variation de la largeur de l'extrusion peut entraîner des problèmes de sous-extrusion ou de surextrusion.

Si elle est définie comme pourcentage (par exemple 25%), elle sera calculée sur le diamètre de la buse.


[Retour Liste variables](variable_list.md)