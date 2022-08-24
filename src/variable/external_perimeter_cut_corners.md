# external_perimeter_cut_corners

* Technologie : FDM
* Groupe : [Réglages de l'Impression](../print_settings/print_settings.md)
* Sous groupe : [Largeur et Débit](../print_settings/print_settings.md#largeur-et-débit) - Débit
* Mode : Expert

## Couper les coins

### Description

Cette option permet de modifier le débit afin de prendre en compte le fait que la buse est ronde et que les coins auront une forme ronde. L'option permet de modifier le débit pour limiter l'extrusion dans les coins et éviter la sur-extrusion. 

Si la valeur est fixée  à 100% l'option est activé, à 0%  elle est désactivé et à 50% elle est semi-activé.

Pour illustrer cle fonctionnement de cette option voici un exemple avec le départ de la première extrusion dans un coin :

![première extrusion dans un coin](Images/external_perimeter_cut_corners/cut_corner_1.jpg)

Ce que nous voudrions avoir mais ne pouvons pas avoir à cause de la forme du cordon déposé :

![ce que nous voulons mais ne pouvons pas avoir](Images/external_perimeter_cut_corners/cut_corner_2.jpg)

Ce qui se passe (théoriquement) :

![ce qui se passe (théoriquement)](Images/external_perimeter_cut_corners/cut_corner_3.jpg)


Ce que l'option **Couper les coins** à **100%** devrait faire :

![ce que cut_corners à 100% devrait faire](Images/external_perimeter_cut_corners/cut_corner_4.jpg)


Note : A 100%, cela change le débit de ~5% sur une très petite distance (~diamètre de la buse), donc cela ne devrait pas être perceptible à moins que vous ayez une très grande buse et une imprimante très précise.

C'est très expérimental, s'il vous plaît faites un rapport sur l'utilité. Il peut être supprimé s'il n'y a pas d'utilité.

[Retour Liste variables](variable_list.md)
