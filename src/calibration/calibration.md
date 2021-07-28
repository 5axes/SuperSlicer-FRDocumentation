# Calibration

## Contenu de la page

* Calibration
	* [Calibration de l'imprimante](#calibration-de-limprimante)
	* [Calibration du filament](#calibration-du-filament)
	* [Calibration du logiciel](#calibration-du-logiciel) 

* [Retour Page principale](../superslicer.md)


Ce menu est là pour vous aider à imprimer des calibrations rapides et efficaces. La plupart des profils d'imprimante devraient fonctionner assez bien avec les paramètres par défaut, mais si vous rencontrez des problèmes, ou si vous voulez passer à un niveau supérieur de qualité, vous devez vous assurer que tout est bien calibré. Les calibrations peuvent être divisées en trois groupes : imprimante, filament et logiciel.

Il faut d'abord calibrer l'imprimante, puis le filament et enfin le logiciel.

## Calibration de l'imprimante

C'est la première chose à calibrer. Chaque imprimante est différente dans ce domaine, et vous devez lire le manuel de votre imprimante pour plus d'informations.

### Calibration de l'extrudeuse

Celui-ci n'a pas d'entrée de menu car il ne peut pas être calibré par une impression. Ce n'est pas obligatoire mais cela peut vous aider à éviter certains problèmes. L'essentiel est expliqué dans l'entête de menu de l'étalonnage du débit.

### Réglage du plateau

La plupart des imprimantes n'ont pas de mise à niveau automatique du plateau, et même celles qui en ont une doivent être calibrées au moins une fois. Ces menus vous expliqueront beaucoup de choses, mais n'oubliez pas de lire la documentation de votre imprimante au cas où il y aurait des étapes spécifiques à votre imprimante. Cette impression de calibration est particulièrement utile si vous voulez vérifier / affiner le résultat final, ou si vous voulez simplement vérifier s'il n'a pas changé depuis la dernière fois.

Cela créera 5 petites plaques. Vous devriez être capable de voir où le plateau est de niveau et où il a besoin de quelques ajustements.

## Calibration du filament
Chaque filament a des propriétés différentes et peut nécessiter des ajustements. Même si le profil par défaut devrait fonctionner la plupart du temps, il peut créer des artefacts évitables. Certains filaments spéciaux (comme ceux en bois) nécessitent une attention particulière.

### Calibration du débit du filament

L'extrudeuse accroche le filament pour le pousser vers l'extérieur, et la façon dont le ressort comprime le filament, et de combien, peut modifier le débit nécessaire. Aussi, si votre extrudeuse n'est pas très bien calibrée, cette étape vous aidera à contrer ce problème.

Notez que si votre filament a un diamètre variable ou n'est pas rond, vous rencontrerez des problèmes de débit, mais ces problèmes ne peuvent pas être résolus. Vous devez changer de fournisseur de filament ou investir dans un capteur de largeur de filament.

### Calibration de la température du filament

Certains filaments ont besoin de plus de chaleur pour coller, et d'autres ont besoin de moins de chaleur pour éviter trop de suintement ou de débordements trop lâches. Cete calibration est là pour vous aider à trouver une bonne valeur pour la température. Vous pouvez également faire plusieurs essais avec différentes vitesses de ventilateur pour essayer de trouver la meilleure combinaison.

## Calibration du logiciel

Ces calibrations sont là pour vous aider à trouver les meilleurs réglages de SuperSlicer qui iront bien avec votre imprimante et votre combinaison de filaments.

### Calibration du débit du pont

Les ponts sont parfois un peu difficiles à imprimer avec un bon rendu. Cette calibration vous aidera à choisir le meilleur réglage pour le flux du pont. Vous pouvez également essayer avec différentes valeurs de la vitesse du ventilateur du pont.

### Calibration du motif de lissage

Il est difficile d'imprimer un dessus plat, car il peut s'abaisser un peu au centre d'une grande zone plate. Cet étalonnage vous aidera à trouver le meilleur réglage pour compenser cela.

### Cube d'étalonnage

Cette entrée vous permettra d'avoir toujours un cube de calibration prêt à être imprimée. C'est utile pour voir si l'impression a une bonne précision dimensionnelle. Cela peut être compensé par les différents paramètres de compensation de la taille X-Y.


Rubrique suivante [Script FreeCAD](../script_freecad/script_freecad.md).

[Retour Page principale](../superslicer.md)