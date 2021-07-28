# z_step

* Technologie : FDM
* Groupe :  Réglages de l'Imprimante
* Sous groupe : Taille et coordonnées
* Mode : Expert

## Pas entier sur Z

### Description

Réglez cette valeur sur la hauteur déplacée lorsque votre moteur Z (ou équivalent) tourne d'un pas. 
Si votre moteur a besoin de 200 pas pour déplacer votre tête/plateau de 1mm, ce champ doit être de 1/200 = 0.005.

Notez que le G-Code écrira les valeurs z avec 6 chiffres après le point si z_step est activé (c'est 3 chiffres s'il est désactivé).

> Mettez 0 pour désactiver.

* Valeur par défaut : 0.005 mm

[Retour Liste variables](variable_list.md)