# Calibration du multiplicateur d'extrusion

Le multiplicateur d'extrusion permet le réglage fin du débit d'extrusion - simplement décrit comme étant**la quantité de filament sortant de la buse**. En d'autres termes, les réglages du**Multiplicateur d'extrusion**dans SuperSlicer et de**Débit**dans le firmware de l'imprimante sont deux façons de régler la même chose, cependant, le réglage de l'un de ces deux paramètres n'influencera pas la valeur de l'autre.

**Cette procédure n'est pas nécessaire avec une nouvelle imprimante provenant de l'usine**, mais s'applique plutôt à des applications et des filaments spécifiques. La valeur idéale est différente pour chaque type de matériau et chaque couleur. Elle peut même différer d'une bobine à l'autre. Gardez cela à l'esprit si vous changez souvent de type et de marque de filament ou si vous utilisez des marques sans nom bon marché.

Débit total =**Multiplicateur de débit**dans le firmware (M221) x**Multiplicateur d'extrusion** dans . Pour ceux qui souhaitent plonger plus profondément, SuperSlicer utilise le même [calcul du débit que Slic3r](https://manual.slic3r.org/advanced/flow-math).

### **Comment repérer un problème**

Cette calibration permet de résoudre deux problèmes courants :

* **Sur-extrusion** - Trop de matière est extrudée (le débit est trop élevé). Cela provoque des cicatrices sur les couches inférieures et une accumulation inutile de matière sur les couches supérieures.
* **Sous-extrusion mineure** - Le matériau extrudé est insuffisant (le débit est trop faible). Cela provoque de petits espaces qui apparaissent entre les lignes des couches ou les périmètres.

![](https://cdn.help.prusa3d.com/wp-content/uploads/under-ok-over.jpg)

La **sur-extrusion** est un problème courant avec de nombreuses marques de filaments. C'est particulièrement problématique lorsque vous essayez de coller deux parties du modèle.**Si la couche supérieure est trop extrudée, vous vous retrouverez avec une surface inégale qui empêchera une connexion transparente entre les deux pièces.**

### **Comment faire la calibration**

Dans SuperSlicer, accédez aux [Réglages du filament](../filament_settings/filament_settings.md) et recherchez le multiplicateur d'extrusion. Le paramètre par défaut (pour le PLA) est 1, cette valeur représente un pourcentage, 1 = 100%, 0,95 = 95% etc. Habituellement, les valeurs ajustées peuvent être comprises entre 0,9 et 1,1. Pour l'ajuster, réécrivez simplement la valeur.

![](https://cdn.help.prusa3d.com/wp-content/uploads/prusuki/prusuki-images/image-2019-1-15-12-55-6.png)

Dans le menu de l'imprimante, lors d'une impression, allez dans le menu Tune puis choisissez Flux. Encore une fois, les valeurs habituelles peuvent varier entre 90 et 110, bien que cela ne signifie pas que vous ne pouvez pas aller au-dessus ou en dessous de cela.

#### Quelle méthode dois-je utiliser ?

Il existe deux méthodes que vous pouvez utiliser pour calibrer le multiplicateur d'extrusion, et nous les couvrirons toutes les deux dans cet article :

* **Méthode précise**\- en utilisant des outils de précision tels que des pieds à coulisse.
* **Méthode visuelle**\- une méthode simple basée sur l'observation des propriétés visuelles de vos modèles.

Le choix de la méthode dépend entièrement de vos préférences ; en fin de compte, les deux donnent des résultats similaires. Même la méthode visuelle vous permettra d'avoir des pièces parfaitement ajustées avec des couches supérieures lisses et plates.

#### Méthode précise

Veuillez noter que le guide suivant est basé sur les Profils de buse de 0,4 mm par**défaut**de SuperSlicer, avec une hauteur de couche de 0,1 mm - 0,2 mm. Cela signifie que :  
\- Taille de la buse = 0,4  
\- Largeur d'extrusion = 0,45  
\- Multiplicateur d'extrusion des matériaux de base (PLA, ABS, PETG) = 1  
**Si vous souhaitez calibrer l'imprimante avec une buse plus grande/plus petite ou des hauteurs de couche supérieures à 0,2, vous devrez également ajuster ces valeurs.**

1.  Téléchargez le [STL Precision Method Cube](https://cdn.help.prusa3d.com/wp-content/uploads/2021/04/cube-40-40-40.zip).
2.  Découpez-le en utilisant le mode Vase et la hauteur de couche que vous utilisez le plus souvent et imprimez-le. Vous pouvez trouver le mode Vase (Réglages d'impression → Couches et périmètres → Vase spirale).
3.  Effectuez trois mesures ou plus au milieu de chaque mur et calculez l'épaisseur moyenne globale.
4.  Calculez le multiplicateur d'extrusion à l'aide de la formule suivante :**Multiplicateur d'extrusion = (largeur d'extrusion (0,45) / épaisseur de paroi moyenne mesurée)**.
5.  Ajustez le multiplicateur d'extrusion dans les Réglage du filament → Filament
6.  Réimprimez le cube avec les nouveaux paramètres et revenez à l'étape 3 si nécessaire.

![](https://cdn.help.prusa3d.com/wp-content/uploads/prusuki/prusuki-images/micrometer-small-jpg.JPG)

Veuillez noter que les pieds à coulisse numériques bon marché peuvent ne pas être suffisamment précis pour effectuer des mesures fiables d'un seul mur périmétrique.

#### Méthode visuelle

Cette méthode ne nécessite aucun outil, seulement votre vue. Le but est de vous assurer que vos couches supérieures sont**lisses**,**brillantes,**et **sans cicatrices** ou **accumulation de filament** près des périmètres.

![](https://cdn.help.prusa3d.com/wp-content/uploads/destiky6.jpg)

1.  Téléchargez le[Visual Method Cube.stl](https://cdn.help.prusa3d.com/wp-content/uploads/2021/04/visual-method-cube.zip)
2.  Découpez-le en utilisant les préréglages du Prusa PLA par défaut à une hauteur de couche de 0,20 mm et imprimez-le.
3.  Inspectez la couche supérieure de votre cube visuellement et avec le bout du doigt.
4.  Si le dessus est sous extrudé ou pas lisse, réajustez le multiplicateur d'extrusion en conséquence de 1-2%.
5.  Répétez les étapes ci-dessus aussi longtemps que nécessaire.

S'il y a**trop de matière**à proximité des périmètres,**diminuez**la valeur du multiplicateur d'extrusion.

![](https://cdn.help.prusa3d.com/wp-content/uploads/prusuki/prusuki-images/buildu.jpg)

S'il y a**trous visibles**entre les lignes de couche,**augmentez**la valeur du multiplicateur d'extrusion. (Des espaces microscopiques près des périmètres sont OK.)

![](https://cdn.help.prusa3d.com/wp-content/uploads/prusuki/prusuki-images/gaps.jpg)