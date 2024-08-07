# Réglages de l'impression


## Contenu de la page

* Réglages de l'impression
	* [Périmètre et enveloppe](#périmètre-et-enveloppe) 
	* [Couche](#couche)
	* [Remplissage](#remplissage)
	* [Jupe et bordure](#jupe-et-bordure)
	* [Support](#support)
	* [Vitesse](#vitesse)
	* [Largeur et Débit](#largeur-et-débit)
	* [Extrudeuses multiples](#extrudeuses-multiples)
	* [Options de sortie](#options-de-sortie)
	* [Remarques](#remarques)
	* [Dépendances](#dépendances)

* [Retour Page principale](../superslicer.md)


![Image : Paramètres pour le réglage des impressions](./images/001.png)


## Périmètre et enveloppe

### Parois verticales

#### *[Périmètres](../variable/perimeters.md)*

Définit le nombre minimal de contours qui forment la paroi d'un modèle. Les profils  utilisent pratiquement toujours un minimum de deux périmètres. 

**Augmenter la résistance du modèle**

La résistance d'un modèle est principalement définie par le nombre de périmètres (pas le remplissage). Si vous voulez avoir une impression plus résistance, augmentez le nombre de périmètres.

![Image : Nombre de périmètres](./images/002.jpeg)

Pour un nombre sélectionné de périmètres et une hauteur de couche, SuperSlicer calcule l'**épaisseur des parois fines optimale**. Si vous revenez à votre dessin CAO et modifiez l'épaisseur de la paroi à cette valeur exacte, vous éliminerez les chevauchements inutiles du périmètre et votre impression aura une finition parfaite de la surface des parois.

Vous pouvez penser que lorsque la largeur d'extrusion d'un périmètre est de 0,45 mm, deux périmètres auront une largeur de 0,90 mm (2x0,45). Cependant, si vous regardez la recommandation pour une hauteur de couche de 0,2 mm, vous constaterez que ce n'est pas vrai et que la valeur suggérée est de 0,86 mm.

Afin de comprendre comment ce nombre est calculé, nous devons examiner la section transversale d'un cordon. SuperSlicer suppose que la section transversale d'une extrusion est un rectangle avec des extrémités semi-circulaires. Notez que la largeur d'extrusion comprend les deux extrémités semi-circulaires.

![Image : Section d’un cordon](./images/001.svg)

*(Cette image est une reprise de la source originale : <https://manual.slic3r.org/advanced/flow-math> )*

Ajoutons maintenant une seconde extrusion/périmètre. Si nous supposons qu'il n'y a pas de chevauchement (chemins tangents), il y aurait un espace vide (en jaune). Afin de remplir l'espace vide et de relier les périmètres ensemble, SuperSlicer chevauche légèrement les périmètres. C'est essentiellement pourquoi vous ne pouvez pas simplement multiplier le nombre de périmètres par la largeur d'un seul périmètre pour obtenir l'épaisseur de paroi idéale.

![Image : tangence des périmètres](./images/004.svg)
![Image : Chevauchement des périmètres](./images/005.svg)

*(Cette image a été fortement inspirée par la source originale : <https://manual.slic3r.org/advanced/flow-math>)*

> Notez que la hauteur de couche (h) est utilisée dans le calcul et l'implication que cela a - si vous modifiez la hauteur de couche, votre épaisseur de paroi idéale changera également !

Pour plus d'informations, consultez la [page mathématique du Flux de Slic3r](https://manual.slic3r.org/advanced/flow-math) (certaines parties de ce texte proviennent de la même page).

#### *[Vase spirale](../variable/spirale_vase.md)*

Crée un conteneur avec un contour unique continu, augmentant progressivement la hauteur en Z.

Lorsque vous imprimez quelque chose avec une paroi à périmètre unique, il y a toujours un petit défaut où l'imprimante passe à la couche suivante. Cet endroit, où l'imprimante s'arrête et termine le périmètre et prend la valeur de son incrément en Z pour commencer un nouveau périmètre, crée une 'cicatrice' disgracieuse sur le côté du modèle. Cette cicatrice appelée aussi 'couture' est également un point faible de l'impression.

Le vase spirale n'a pas ce défaut, à l'exception des N premières couches pleines inférieures. Au lieu de cela, la hauteur augmente progressivement tout le temps, jusqu'à ce que le haut de l'impression soit atteint.

Lorsque le mode vase est activé, SuperSlicer définit automatiquement les paramètres associés en conséquence :

- un périmètre
- remplissage de 0%
- couches pleines supérieures désactivées
- supports désactivés
- "maintien de l'épaisseur de coque verticale" désactivé

Gardez à l'esprit que le simple fait de modifier ces paramètres et de ne pas activer le mode vase n'est pas la même chose que le véritable mode vase, car l'objet ne sera pas imprimé en continu.

Vous pouvez toujours ajuster le nombre de **couches pleines inférieures**. De plus, vous pouvez régler la **largeur d'extrusion des périmètres externes** dans le menu [**Avancé**](#avancé) pour obtenir un vase plus épais/étanche (par exemple de 0,45 à 0,6).

Le modèle doit être défini comme un solide plein, sinon, SuperSlicer essaiera (et échouera) à créer des surfaces intérieures et extérieures, donc modélisez uniquement les dimensions extérieures.

**Un seul objet à la fois peut être imprimé en mode vase**. Si vous aviez plusieurs objets sur le plateau d'impression, il serait impossible de les imprimer en continu. Vous pouvez contourner cette limitation en activant [l'impression séquentielle](../variable/complete_objects.md).

### Coques horizontales

#### *[Couches pleines  du dessus](../variable/top_solid_layers.md) / [Couches pleines du dessous](../variable/bottom_solid_layers.md)*

Les parties inférieures et supérieures de chaque modèle sont généralement remplies de couches pleines (100% de remplissage).

Vous pouvez définir le nombre **de couches pleines (du dessus et du dessous)** que vous souhaitez imprimer. Vous pouvez également définir une **épaisseur de coque minimale**, ce qui est particulièrement utile lorsque vous utilisez la fonction de hauteur de couche variable. L'info-bulle sous ces paramètres sera mise à jour à chaque modification que vous apporterez, vous donnant une meilleure idée de l'épaisseur de paroi supérieure/inférieure résultante.

Régler les couches pleines supérieures ou inférieures à 0 remplace l'épaisseur de paroi minimale. Vous n'avez donc pas besoin de régler également l'épaisseur de paroi minimale à 0 pour obtenir des couches supérieures ou inférieures.

![Image : Nombre de couches supérieures et inférieures](./images/005.png)

Le remplissage plein supérieur est essentiellement un pont sur le motif de remplissage. Pour cette raison, vous verrez presque toujours un peu d'affaissement des premières lignes de remplissage pleins. Plus le remplissage est faible, plus la distance de pontage est longue et, par conséquent, plus l'affaissement est important. Cela peut être contrecarré en augmentant simplement le nombre de couches pleines - il est recommandé d'avoir  ***au moins 3 couches supérieures***. 

Vous pouvez réduire davantage ce comportement avec un maillage modificateur, qui augmente le remplissage pour les dernières couches avant le remplissage plein.

![Image :* De gauche à droite, 1, 2, 3 et 5 couches supérieures, imprimées à une hauteur de couche de 0,1 mm (Image Prusa)](./images/006.jpeg)

Gardez à l'esprit que lorsque vous imprimez à des hauteurs de couche basses, vous aurez besoin de plus de couches pleines pour obtenir la même épaisseur de paroi supérieure/inférieure (par exemple, avec une hauteur de couche de 0,3 mm, utilisez 3 couches supérieures, avec une hauteur de couche de 0,1 mm, utilisez 9 couches supérieures).

Le motif de remplissage plein par défaut est rectiligne, mais vous pouvez choisir parmi plusieurs autres motifs.


#### *[Épaisseur de coque minimale du Dessus](../variable/top_solid_min_thickness.md) / [Épaisseur de coque minimale du  Dessous](../variable/bottom_solid_min_thickness.md)*

Permet de définir une **épaisseur de coque minimale**, ce qui est particulièrement utile lorsque vous utilisez la fonction de hauteur de couche variable. L'information sous ces paramètres sera mise à jour à chaque modification que vous apporterez, vous donnant une meilleure idée de l'épaisseur de paroi supérieure/inférieure résultante.

![Image : Info sur les épaisseurs de coque](./images/009.png)

#### *[Pas de remplissage plein si plus de ](../variable/solid_over_perimeters.md) X périmètres*

Lorsque vous avez un nombre moyen/haut de couches pleines supérieures/inférieures, et un nombre faible/moyen de périmètres, alors il faut mettre du remplissage plein à l'intérieur de la pièce pour avoir assez de couches solides.
En fixant cette valeur à un niveau supérieur à 0, vous pouvez supprimer ce 'remplissage intérieur'. Ce nombre permet d'en garder si le nombre de 'périmètre au-dessus du vide' est faible.

Si ce paramètre est égal ou supérieur au nombre de couches pleines supérieures et inférieures, il n'enlévera rien.

Si ce paramètre est réglé sur 1, il enlévera toutes les couches pleines qui sont seulement au-dessus des périmètres.


#### *[S’assurer que les remplissages sont à 100% du volume](../variable/enforce_full_fill_volume.md)*

Option expérimentale qui modifie (en remplissage plein) le débit de remplissage pour avoir la quantité exacte de plastique à l'intérieur du volume à remplir (le débit varie généralement de -7% à + 4%, en fonction de la taille de la surface à remplir et du paramètre de chevauchement, mais il peut aller jusqu'à + 50% pour le remplissage dans de très petites zones où la couverture rectilinéaire n’est pas bonne). Il présente l'avantage de supprimer la surextrusion causée par le paramètre de chevauchement dans les surfaces de remplissage étroites.

### Qualité 

Attention l'utilisation de ces options génère un découpage plus lent.

![Paramètres de Qualité](./images/007.png)

#### *[Un seul périmètre sur la première couche](../variable/only_one_perimeter_first_layer.md)*
Option pour n’'utiliser qu'un seul périmètre sur les surfaces plates du dessous, pour laisser plus de place au motif de dessous.

#### *[Un seul périmètre sur le dessus](../variable/only_one_perimeter_top.md)*

Option pour n’'utiliser qu'un seul périmètre sur les surfaces plates du dessus, pour laisser plus de place au motif de dessus.

##### *[Largeur minimale](../variable/min_width_top_surface.md)*

Si une surface du dessus doit être imprimée et qu'elle est partiellement couverte par une autre couche, elle ne sera pas considérée comme une couche du dessus dont la largeur est inférieure à cette valeur. 

Cela peut être utile pour ne pas laisser l'option ***[un périmètre sur le dessus](only_one_perimeter_top.md)*** se déclencher sur surface qui ne devrait être couverte que par des périmètres. Cette valeur peut être un mm ou un % de la [largeur d'extrusion du périmètre](perimeter_extrusion_width.md).

#### *Périmètres supplémentaires si nécessaire*

Une option héritée qui, à notre connaissance, ne fait plus vraiment grand-chose. Faites-nous savoir si vous trouvez un cas où cela change quelque chose.

Théoriquement cette option permet d’ajouter plus de périmètres si nécessaire pour éviter des trous dans les parois inclinées. SuperSlicer ajoute des périmètres, jusqu'à ce que plus de 70% de la boucle immédiatement au-dessus soit supportée.

##### *[Sur les surplombs](../variable/extra_perimeters_overhangs.md)*

Ajoutez des périmètres supplémentaires si nécessaire pour éviter les vides dans les murs en pente.
SuperSlicer continue d'ajouter des périmètres jusqu'à ce que tous les surplombs soient remplis.

##### *[Sur les couches impaires](../variable/extra_perimeters_odd_layers.md)*

Ajouter un périmètre à chaque couche impaire. Avec cela, le remplissage est pris en sandwich et vous pourrez peut-être réduire considérablement  le paramètre de chevauchement remplissage / périmètre.

#### *[S'assurer de l'épaisseur de la coque verticale](../variable/ensure_vertical_shell_thickness.md)*

Cette fonction résout l'un des plus gros problèmes des slicers plus anciens, à savoir le fait d'avoir des trous entre les périmètres sur une surface inclinée. Cela était typique lors de l'impression de bustes et d'autres modèles à l'aspect organique. De tels objets avaient généralement quelques trous au-dessus de la tête. Lorsque cette fonction est activée, SuperSlicer s'assure qu'elle définit les supports (internes) nécessaires pour les périmètres dans une couche à venir.

Cette fonctionnalité affecte actuellement encore la génération du G-code même lorsqu'elle est désactivée et peut produire un G-code inattendu. Il s'agit d'un problème connu et nous travaillons sur un correctif.

![Image : Suppression des trous entre les périmètres sur une surface inclinée (image Prusa)](./images/008.jpeg)

#### *[Pas de remplissage plein si plus de](../variable/solid_over_perimeters.md)*

Lorsque vous avez un nombre de couches pleines inférieures, et un nombre faible ou moyen de périmètres, alors il faut mettre du remplissage plein à l'intérieur de la pièce pour avoir assez de couches solides.

En fixant cette valeur à un niveau supérieur à 0, vous pouvez supprimer ce 'remplissage intérieur'.

Ce nombre permet d'en garder si le nombre de périmètre au-dessus du vide est faible.

#### *[Éviter de traverser les périmètres](../variable/avoid_crossing_perimeters.md)*

Permet d’optimiser les déplacements afin de minimiser le franchissement de périmètres. Cela peut aider à empêcher les coulures de la buse lors des déplacements, en particulier avec les extrudeurs Bowden. L'activation de cette fonction ralentit considérablement la génération du G-code et augmente le temps d'impression.

![Éviter de traverser les périmètres option actives à droite*](./images/009.jpeg)

Éviter de traverser les périmètres option actives à droite.

##### *[Eviter de traverser les périmètres - Pas sur la première couche](../variable/avoid_crossing_not_first_layer.md)*

Permet de ne pas activer l'option 'Éviter de traverser les périmètres' sur la première couche.

##### *[Eviter de traverser les périmètres - Longueur de détour maximum](../variable/avoid_crossing_perimeters_max_detour.md)*

Paramètre actif si l’option ***Éviter de traverser les périmètres*** est active. Il indique, la longueur de détour maximum pour éviter de croiser les périmètres. Si le détour est plus long que cette valeur, l'option *Eviter de traverser les périmètres* ne s'applique pas pour ce chemin de déplacement. La longueur de détour peut être spécifiée soit comme une valeur absolue soit comme le pourcentage (par exemple 50%) d'un chemin de déplacement direct.

#### *Murs minces*

Option pour détecter les parois extrudable par une seule passe (Murs minces) (pièces dans lesquelles deux extrusions ne rentrent pas et nous devons réduire à une seule trace). Si cette case n'est pas cochée, SuperSlicer peut essayer d’adapter les périmètres là où ce n’est pas possible, créant ainsi un chevauchement conduisant à une sur-extrusion.

##### *[Largeur minimales](../variable/thin_walls_min_width.md)*

La largeur minimale pour extruder (les largeurs inférieures au diamètre de la buse seront sur-extrudées au diamètre de la buse). Si exprimé en pourcentage (par exemple 110%), il sera calculé sur le diamètre de la buse. Le comportement par défaut de SuperSlicer est d'utiliser une valeur de 33%. Mettez 100% pour éviter toute sorte de sur-extrusion.

##### *[Chevauchement](../variable/thin_walls_overlap.md)*

Recouvrement entre les parois minces et les périmètres. 
Peut être un % de la largeur des périmètres extérieur (par défaut: 50%).

##### *[Fusion avec les périmètres](../variable/thin_walls_merge.md)*

Permettre au périmètre extérieur de se chevaucher lui-même pour éviter l'utilisation de murs minces.
Notez que le flux n'est pas ajusté et qu'il en résultera une sur-extrusion et un comportement indéfini.

#### *[Chevauchement du périmètre extérieur](../variable/thin_perimeters.md)*

Permettre au périmètre extérieur de se chevaucher lui-même pour éviter l'utilisation de murs minces.
Notez que le flux n'est pas ajusté et qu'il en résultera une sur-extrusion et un comportement indéfini.

#### *[Egalement pour tous les périmètres](../variable/thin_perimeters_all.md)*

Permettez à tous les périmètres de se chevaucher, et pas seulement aux périmètres externes.

Modifiable si l'option [thin_perimeters](thin_perimeters.md) est active.


### Surplombs

![Image : Paramètres de Surplombs](./images/012.png)
#### *[Seuil](../variable/s_overhangs.md)*

Composant simple pour activer/désactiver la détection des surplombs (en utilisant 55% et 75% pour les deux seuils).

Utilisez le mode expert pour obtenir des contrôles plus détaillés.

#### *[Seuil pour Vitesse du pont et ventilateur](../variable/overhangs_width_speed.md)*

Largeur minimale non supportée pour une extrusion afin d'appliquer le ventilateur de pont & vitesse du surplomb à ce surplomb. 

Peut être spécifié en mm ou en % du diamètre de la buse diamètre de la buse.

> ***Mettre à 0 pour le désactiver.***

#### *[Seuil pour débit du pont](../variable/overhangs_width.md)*

Largeur minimale non supportée pour une extrusion afin d'appliquer le flux de pont à ce porte-à-faux. 

> Peut être spécifié en mm ou en % du diamètre de la buse.

> ***Mettre à 0 pour le désactiver.***

#### *Direction d’extrusion*

##### *[Inversé sur impair](../variable/overhangs_reverse.md)*

Extrudez les périmètres qui ont une partie sur un surplomb dans la direction inverse dans le sens inverse, en couches impaires. Ce motif alterné peut améliorer considérablement les surplombs abrupts.

***!! Cet algorithme est très lent (il utilise les mêmes résultats que [extra_perimeters_overhangs](../variable/extra_perimeters_overhangs.md)) !!***

##### *[Seuil inversé](../variable/overhangs_reverse_threshold.md)*

Nombre de mm que doit avoir le surplomb pour que l'inversion soit considérée utile. 

> Peut être défini par un % de la largeur du périmètre.

Pour être défini l'option [overhangs_reverse](overhangs_reverse.md) doit être active.

### Avancé

#### *[Pas de périmètres dans un pont](../variable/no_perimeter_unsupported_algo.md)*

Cette option est là pour aider à découper les objets qui ont un trou de contre-perçage. 

![Image : Exemple de trou avec contre-perçage](./images/013.jpeg)


![Image : Découpe standard](./images/014.jpeg)

Il existe plusieurs options pour résoudre ce problème :

- **Retirer les périmètres** : il suffit de déplacer le périmètre depuis la zone du pont.

> Pour (+) : simple et efficace.
> Contre (-) : certains ponts ne sont pas ancrés des deux côtés.

![Image : Retirer les périmètres](./images/015.jpeg)

- **Remplir les vides avec des ponts** : déplacez le périmètre et étendez la zone du pont pour remplir l'espace vide. Cela créera un opercule que l'utilisateur devra retirer manuellement. Notez que vous pouvez faire cela manuellement en créant un nouveau cylindre à cette position (clic droit sur votre pièce -> ajouter une pièce -> cylindre, dans la zone de droite déverrouiller les échelles et changer la taille X&Y ; appuyer sur entrée et ensuite le déplacer dans votre trou ; changer sa taille z à votre hauteur de couche et entrer la position Z).

> Pour (+) : meilleur effet de contre-perçage.
> Contre (-) : les cônes de contre-perçage avec un angle raide détruiront votre pièce à cause de la surextrusion (encore plus que la normale).

![Image : Remplir les vides avec des ponts](./images/016.jpeg)

- **Ne gardez que les ponts** : n'imprimez aucune zone qui ne soit pas un pont. Trop expérimental, ne l'utilisez pas avant qu'il ne s'améliore un peu. 

> Pour  (+) : ? simple ?
> Contre (-) : détruira vos surplombs et je ne pense pas qu'il imprimera mieux le trou de contre-alésage non plus.

![Image : Ne gardez que les ponts](./images/017.jpeg)

- **Conserver les ponts et les surplombs** : Il imprime le pont comme l'option précédente, mais remplit le reste avec un périmètre et des "mauvais ponts". Très expérimental. 

> Pour (+) : va pousser la bonne quantité de plastique, comme "Supprimer les périmètres" mais avec moins de "ponts ancrés sur un côté".
> Contre (-) : difficile à imprimer.

![Image : Conserver les ponts et les surplombs](./images/018.jpeg)


#### *[Remplir les vides entre les parois](../variable/gap_fill.md)*

Permet d'activer l'algorithme de remplissage des trous. Il extrudera de petites lignes entre les périmètres lorsqu'il n'y a pas assez d'espace pour un autre périmètre ou un remplissage complet.

##### *[Surface minimum](../variable/gap_fill_min_area.md)*

Ce paramètre représente le minimum de mm² pour la création d’une extrusion de remplissage d’espace entre les parois.

> Peut être définie par un % de (largeur du périmètre)²

##### *[Après le dernier périmètre](../variable/gap_fill_last.md)*

Tous les espaces entre le dernier périmère et le remplissage qui sont plus minces qu'un périmètre seront remplis par du remplissage.

##### *[Extension](../variable/gap_fill_extension.md)*

Tous les espaces entre le dernier périmère et le remplissage qui sont plus minces qu'un périmètre seront remplis par du remplissage.

#### *[Position des jointures](../variable/seam_position.md)*

Détermine le point de départ de chaque boucle de périmètre, et donc la position de la **jointure verticale** potentiellement visible sur le côté de l'objet. Sauf si vous imprimez en mode vase spirale.

La jointure ressemble à une petite goutte sur la surface du modèle. SuperSlicer peut tenter de masquer la jointure dans les bords du modèle (en utilisant le réglage "**Le plus proche**”) ou sur la face arrière (“**Arrière**"), de les répartir aléatoirement sur la surface ("**Aléatoire**”), disposés en lignes (“**Aligné**”) ou Selon des critères de coût (**Basé sur les coûts**).

Dans le cas où la position de la jointure est basée sur les coûts, il est possible de définir deux « Coûts » :

- Un **Coût du déplacement** de l'extrudeuse. La pénalité la plus élevée est lorsque le point est le plus éloigné de la position de l'extrudeuse avant l'extrusion du périmètre externe.
- Un Coût du placement de la couture à un mauvais **Angle**. Le pire angle (pénalité maximale) est quand il est plat.

A moins que vous n'imprimiez en mode "vase en spirale", chaque boucle du périmètre doit commencer et se terminer quelque part. Ce point de départ/fin crée une couture verticale potentiellement visible sur le côté de l'objet. C'est ce qu'on appelle communément des boutons, des coutures de couches ou des cicatrices.

Cette couture sera particulièrement visible si la forme de l'objet est cylindrique, sans angles vifs.

Afin de masquer le plus possible la couture, plusieurs options de placement de la couture sont disponibles dans : [**Paramètres d'impression - Périmètres et enveloppe- Avancé -Jointures.**](#jointures)

![Image : Avancé](./images/020.png) 

À partir de **SuperSlicer 2.3**, vous pouvez utiliser **l'outil de peinture des coutures** pour avoir un contrôle détaillé sur le placement des coutures.

##### *Basé sur les coûts*

Tentative de placer la couture dans le bord le plus proche de la couche actuelle. Si votre modèle a des angles vifs, cela rendra la couture effectivement **invisible**.

Pour être précis, on essaiera de choisir un sommet concave sans surplomb de sorte que la couture soit cachée à l'intérieur de l'angle concave. Si aucun sommet concave sans surplomb n'est disponible, il choisira un sommet convexe sans surplomb. Si aucun n'est disponible, il choisira un sommet sans surplomb. Le choix parmi les candidats est opéré de manière à ce que le point de départ soit le plus proche de la position précédente de l'extrudeuse. Cette option est donc optimale pour les courts trajets.

![Image : Position de couture Basé sur les coûts (Le plus proche)](./images/021.jpeg)


##### *Aligné*

Il utilisera la même logique que le plus **proche** pour trouver les candidats, mais il choisira celui qui est le plus proche du point de départ de la couche précédente. Cela permettra de s'assurer que la couture est principalement alignée sur l'ensemble de l'objet.

![Image : Position de couture aléatoire (à gauche) ou alignée (à droite)](./images/022.jpeg)

Position de couture aléatoire (à gauche) ou alignée (à droite)

##### *Aléatoire*
Celui-ci choisira un point différent pour chaque couche, ce qui rendra le joint moins perceptible au prix d'une surface moins lisse (petits boutons éparpillés sur la surface).

Il n'est pas très logique d'utiliser la position aléatoire du joint sur les modèles avec coins / bords tranchants, il est bien préférable d'utiliser la position la plus proche ou alignée dans ce cas. En revanche, pour l'impression de formes cylindriques sans bords tranchants, la position aléatoire du joint est une option viable.

![Image : Positionnement aléatoire des coutures](./images/023.jpeg)


##### *Arrière*

L'arrière fonctionne de manière similaire à l'alignement, mais il essaiera de positionner la couture près du Y maximum (arrière du lit d'impression). Il essaie toujours d'éviter les débordements et tente de placer la couture dans les coins.

##### *Comment réduire la visibilité de la couture*

Avec la technologie FDM, il n'est pas possible d'éliminer entièrement la couture. Elle sera toujours un peu visible. Cependant, avec des réglages bien adaptés, elle ne devrait pas être trop visible.

Les paramètres qui affectent la visibilité de la couture sont **l'avance linéaire** et le **multiplicateur d'extrusion**. Les profiles Prusa d'origine ont déjà ces réglages, mais si vous voulez affiner un profil personnalisé, vous pouvez essayer d'abaisser le multiplicateur d'extrusion et de calibrer la valeur de l'avance linéaire pour réduire la visibilité de la couture.

Vous pouvez utiliser le **mode "Vase"** pour éviter la couture, mais vous serez alors limité à un seul périmètre et à aucun remplissage.

Exemple de position de la couture en fonction des réglages

|![Aléatoire](./images/024.png)|![Basé sur les coûts](./images/025.png)|![Aligné](./images/026.png)|![Arrière](./images/027.png)|
| :-: | :-: | :-: | :-: |
|<p>**Aléatoire**</p>|<p>**Basé sur les coûts**</p>|<p>**Aligné**</p>|<p>**Arrière**</p>|



#### [Périmètre à une boucle](../variable/perimeter_loop.md)

Cette option permet d’enchaîner les périmètres pour créer une seule extrusion continue sans interruption. Les longs déplacements intérieurs (de l'extérieur aux trous) ne sont pas extrudés pour laisser un peu d'espace au remplissage.

![Image : Exemple périmètre à une boucle](./images/028.png)

L’option ***[Jointures](../variable/perimeter_loop_seam.md)*** Permet de spécifier la position des points de départ des jonctions entre périmètres. Il est possible de choisir entre :

- ***Au plus près*** : Au plus près entre les jointures ou sur l’arrière.
- Et ***Arrière*** : à l’arrière du modèle.


#### [Coins arrondis](../variable/perimeter_round_corners.md)

Avec cette option, les périmètres internes contourneront les angles aigus en créant un rayon au lieu de faire un angle aigu. Cela peut aider quand il y a des trous visibles dans les coins aigus des périmètres.

![Image : Exemple de périmètres sans l'option](./images/029.png) ![Image : Exemple de périmètres à droite obtenus avec l’option **Coins arrondis**](./images/030.png)

 Exemple de périmètres à droite obtenus avec l’option **Coins arrondis**

#### [Surfaces irrégulières](../variable/fuzzy_skin.md)

Création sur la peau des impressions d'une surface irrégulière. Lors de l'impression avec une peau floue, la surface des côtés de l'impression est rendue rugueuse. Cela donne à l'impression une sorte de texture.

Ce mode ajoute des ondulation aléatoires à la paroi extérieure pendant l'impression. La surface est ainsi rendue rugueuse au toucher. La surface n'est rendue irrégulière que sur les côtés de l'impression. Aucune irrégularité n'est ajouté sur le dessus.

![Image : Exemple de surface irrégulière](./images/fuzzy_skin.png) 

Le réglages de ces irrégularités est réalisé à l'aide de deux paramètres  **[Epaisseur de la surface irrégulière](../variable/fuzzy_skin_thickness.md)** et **[Distance des points de la surface irrégulière](../variable/fuzzy_skin_point_dist.md)**. 



### [Périmètres extérieur en premier](../variable/external_perimeters_first.md)

Les périmètres seront imprimés de l'extérieur vers l'intérieur au lieu de l'ordre inverse.

Ce paramètre peut aider à la **précision dimensionnelle** car le périmètre extérieur est posé en premier et tout filament supplémentaire extrudé lors de l'impression des périmètres suivants est repoussé à l'écart de la paroi extérieure. En revanche, la surface peut être légèrement moins lisse.

#### *Appliquer sur*

L’option permet de régler le mode d’application de cette option sur les périmètres de l’impression.

##### *[Le coté extérieure](../variable/external_perimeters_nothole.md)*

Ne fais le périmètre extérieur que sur les côtés extérieurs. Utile quand l’épaisseur est trop faible.

##### *[Le coté intérieur](../variable/external_perimeters_hole.md)*

Ne fais le périmètre extérieur que sur les côtés intérieurs. Utile quand vous voulez seulement retirer la couture des trous de vis.

#### *[En mode vase (sans couture)](../variable/external_perimeters_vase.md)*

Imprimez les périmètres de contour en deux cercles de manière continue, un peu comme pour le mode vase. 

Il faut que le paramètre external_perimeters_first soit actif.

Ne fonctionne pas pour la première couche, car cela pourrait endommager le plateau.

Remarquez qu'il utilisera min_layer_height de votre configuration matérielle comme hauteur de base  (elle ne commence pas à 0). Veillez donc à indiquer la valeur la plus basse possible que votre imprimante puisse gérer. 

Si sa hauteur n'est pas inférieure à deux fois la hauteur actuelle de la couche, l'algorithme normal est utilisé, car il n'y a pas assez de place pour effectuer deux boucles.

Par exemple, pour que cet algorithme ai un vrai impact, il faut que la hauteur minimale soit au moins à 0.05 pour une hauteur de couche de 0.2.

#### *[Une meilleur liaison](../variable/perimeter_bonding.md)*

Ce réglage peut dégrader un peu la qualité de votre périmètre externe, en échange d'une meilleure liaison entre les périmètres.

Utilisez-le si vous avez de grandes difficultés avec le collage des périmètres, par exemple avec des filaments à haute température.

Ce pourcentage est le % de chevauchement entre les périmètres, un peu comme perimeter_overlap et external_perimeter_overlap, mais en sens inverse. Vous devez définir perimeter_overlap et external_perimeter_overlap à 100 %, sinon ce paramètre n'a aucun effet.

- 0 : aucun effet, 
- 50% : la moitié de la buse sera au-dessus d'un périmètre déjà extrudé pendant l’extrusion d’un nouveau périmètre, sauf s'il s'agit d'un périmètre externe.

La valeur maxi est de 50%.

Ce paramètre est très expérimental, veuillez faire un rapport sur l'utilité. Il peut être supprimé s'il n'y a pas d'utilité pour ça.

![Image : Options Périmètres externes en premier](./images/031.png)

### [Générateur de périmètre Arachne](../variable/perimeter_generator.md)

Le générateur de périmètre classique produit des périmètres avec une extrusion constante et pour les zones très fines, on utilise du remplissage de vide. Le moteur **Arachne** produit des périmètres avec une largeur d'extrusion variable.

![Image : Options Périmètres Arachne](./images/032.png)
#### *Seuil de périmètre*

##### *[Seuil de division périmètre intermédiaire](../variable/wall_split_middle_threshold.md)*

La plus petite largeur d'extrusion, en tant que facteur de la largeur d'extrusion normale, au-dessus de laquelle un périmètre moyen (s'il n'y en avait pas déjà un) sera ajouté. 

##### *[Seuil d'ajout d'un périmètre médian](../variable/wall_add_middle_threshold.md)*

La plus petite largeur d'extrusion, en tant que facteur de la largeur d'extrusion normale, au-dessus de laquelle un périmètre moyen (s'il n'y en avait pas déjà un) sera ajouté. 

#### *Transition de périmètre*
##### *[Angle](../variable/wall_transition_angle.md)*

Quand créer des transitions entre les nombres pairs et impairs de périmètres. A forme de coin avec un angle supérieur à ce paramètre n'aura pas de transitions et aucun périmètre ne sera imprimé au centre pour remplir l'espace restant. 

Réduire ce paramètre permet de réduire le nombre et la longueur de ces périmètres centraux, mais peut laisser des vides ou des surextrusions.

##### *[Marge de distance](../variable/wall_transition_filter_deviation.md)*
Empêcher la transition entre un périmètre supplémentaire et un périmètre standard.

Cette marge étend la plage des largeurs d'extrusion qui suivent à [largeur minimale du périmètre - marge, 2 * largeur minimale du périmètre + marge]. L'augmentation de cette marge réduit le nombre de transitions, ce qui réduit le nombre de démarrages/arrêts d'extrusion et le temps de déplacement. Cependant, une grande variation de la largeur de l'extrusion peut entraîner des problèmes de sous-extrusion ou de surextrusion.

Si elle est définie comme pourcentage (par exemple 25%), elle sera calculée sur le diamètre de la buse.

##### *[Longueur](../variable/wall_transition_length.md)*

Lors de la transition entre différents nombres de périmètres lorsque la pièce devient plus mince, une certaine quantité d'espace est allouée pour diviser ou joindre les segments de périmètre.

#### *[Nombre de répartition des périmètres](../variable/wall_distribution_count.md)*

Le nombre de périmètres, comptés à partir du centre, sur lesquels la variation doit être répartie. Des valeurs plus faibles signifient que les périmètres extérieurs ne changent pas en largeur.

#### *Forme minimale*

##### *[Largeur minimale du contour](../variable/min_bead_width.md)*

Largeur du périmètre qui remplacera les caractéristiques fines (selon la taille minimale des éléments) du modèle. Si la largeur minimale du périmètre est plus fine que l'épaisseur de l'élément, le périmètre deviendra aussi épais que l'élément lui-même. 

Si elle est exprimée en pourcentage (par exemple 85%), elle sera calculée sur le diamètre de la buse.

##### *[Taille minimale de l'élément](../variable/min_feature_size.md)*

Épaisseur minimale des éléments minces. Les formes du modèle qui sont plus fines que cette valeur ne seront pas imprimées, tandis que les formes plus épaisses que la taille minimale de l'élément seront élargie à la largeur minimale du contour.

## Couche

### Hauteur de couche

#### *[Hauteur de  base des couches](../variable/layer_height.md)*

Hauteur de chaque tranche/épaisseur de chaque couche. La hauteur de couche est le principal facteur affectant à la fois :

- le temps d'impression
- la résolution verticale

En choisissant des **hauteurs de couche plus élevées**, vous pouvez **réduire considérablement le temps d'impression** au prix de couches plus visibles. D'un autre côté, choisir une **petite hauteur de couche** (par exemple 0,10 mm) permettra des **détails supplémentaires** au prix de temps d'impression plus longs.

En règle générale, nous ne suggérons pas de descendre à moins de 0,10 mm car l'amélioration de la qualité d'impression avec des couches de 0,07 ou 0,05 mm est relativement mineure avec des temps d'impression nettement plus longs.

![Image : Temps d’impression et qualité selon les paramètres (Image Prusa)](./images/032.jpeg)
Image Prusa



Gardez à l'esprit que la hauteur de couche ne modifie que la résolution **verticale**. Par exemple, un texte en relief parallèle au plateau d'impression aura la même apparence quelle que soit la hauteur de couche. Si vous recherchez une résolution accrue dans le plan XY, [allez voir les buses avec un diamètre différent](../tutorial/nozzles_with_a_different_diameter.md).

Pour tirer le meilleur parti des deux mondes, pensez à utiliser la **Fonction de hauteur de couche variable.**

**Hauteur de couche maximale pour votre buse**

La hauteur de couche doit être **inférieure à 80%** du **diamètre de la buse** (par exemple, la hauteur de couche maximale avec une buse de 0,4 mm est d'environ 0,32 mm). La hauteur de couche ne peut pas être supérieure au diamètre de la buse, SuperSlicer affichera un message d'erreur si vous essayez de saisir une telle valeur.

#### *[Hauteur de la première couche](../variable/first_layer_height.md)*

Lors de l'impression avec des hauteurs de couche très basses, vous souhaiterez peut-être toujours imprimer une première couche plus épaisse pour augmenter l'adhérence au plateau d'impression. **Les profils d'impression Original Prusa utilisent toujours 0,20 mm comme première hauteur de couche.**

Vous pouvez l'exprimer en valeur absolue (par exemple 0,20 mm) ou en pourcentage de la hauteur de couche par défaut (par exemple 150%).

Changer la hauteur de la première couche nécessitera très probablement une **calibration de la première couche** sur votre imprimante.

### Filtration

#### *[Résolution](../variable/resolution.md)*

Résolution minimale pour les détails, utilisée pour simplifier le fichier d'entrée afin d'accélérer le découpage et de réduire l'utilisation de la mémoire. Les modèles haute-résolution possèdent souvent plus de détails que ce que les imprimantes peuvent produire. 

Mettez **à zéro** pour désactiver toute simplification et utiliser la résolution complète de l'entrée.

#### *[Résolution interne](../variable/resolution_internal.md)*

Résolution minimum pour les structures interne (remplissage des vides, certains motifs).

Ne pas mettre une valeur trop faible (0.05mm est déjà faible pour certaines imprimantes), car cela créera trop de tout petits segments diffice à afficher et à imprimer.


#### *[Précision de la lecture du modèle](../variable/model_precision.md)*

C'est la précision du fichier de l'objet en entrée. Il est utilisé pour aligner des points qui devraient être sur la même ligne.
Mettez **à zéro** pour désactiver toute simplification et utiliser la résolution complète de l'entrée.

#### *[Distance de fermeture des faces disjointes](../variable/slice_closing_radius.md)*

Les fentes d'une taille inférieure à 2x le rayon de l'espacement sont remplies au cours du tranchage par maillage triangulaire. L'opération de fermeture de l'espacement peut réduire la résolution de l'impression finale, aussi est-il conseillé de conserver une valeur relativement basse.

![Image : Options de Filtration](./images/033.png)


### Modification des couches

#### *[Lissage des courbes](../variable/curve_smoothing_precision.md)*

Ces paramètres permettent au logiciel de lisser les angles de chaque couche. La nouvelle précision sera celle de ce paramètre. 

Mettez **à zéro** pour désactiver toute simplification et utiliser la résolution complète de l'entrée.

Remarque : comme il utilise les arêtes du polygone et ne fonctionne que dans les plans 2D, vous devez disposer d'un modèle 3D très propre. 

Il n'est utile que pour adoucir des modèles fonctionnels ou des angles très plats.

L’algorithme de lissage des courbes peut être modifié en jouant sur 4 paramètres :

- **[Précision](../variable/curve_smoothing_precision.md)**
- **[Angle concave minimum](../variable/curve_smoothing_angle_convex.md)**
- **[Angle convexe minimum](../variable/curve_smoothing_angle_concave.md)**
- **[La Distance Maxi](../variable/curve_smoothing_cutoff_dist.md)**

#### *[Compensation en XY](../variable/xy_size_compensation.md)*

L'objet sera agrandi/réduit sur les plans XY selon la valeur indiquée (négatif = réduit, positif = agrandi). Ce réglage peut être utile pour un réglage fin des tailles de trous.

Il est possible de définir une valeur pour les contours **[Extérieurs](../variable/xy_size_compensation.md)** ou **[Intérieurs](../variable/xy_inner_size_compensation.md)** et sur la **[Première couche](../variable/first_layer_size_compensation.md)**.

#### *[XY Compensation de la première couche](../variable/first_layer_size_compensation.md)*

Lors de l'impression, **la Première couche** est écrasée sur le plateau d'impression chauffé et, par conséquent, elle est généralement **un peu plus large qu'elle ne devrait l'être.** Ce problème est également appelé effet [pied d'éléphant](../glossary/glossary.md#pied_déléphant).

Pour de nombreuses applications, ce n'est peut-être pas un problème. Mais si vous avez quelque chose qui a vraiment besoin d'avoir des dimensions précises ou de s'adapter avec des tolérances très serrées, cela peut être un problème. 

![Image : Sans la compensation de l'effet patte d'éléphant, la première couche peut être plus large que prévu](./images/034.svg)

Pour accéder à ces paramètres, SuperSlicer doit être en mode avancé ou expert.

Vous pouvez régler la valeur de compensation pour la ***[Première couche](../variable/first_layer_size_compensation.md)*** . Avec ce paramètre , la première couche sera agrandie / réduite dans le plan XY par la valeur configurée pour compenser l'augmentation de la largeur par écrasement  (la valeur devrait être négative = vers l'intérieur).

La variable ***[hauteur des couches](../variable/first_layer_size_compensation_layers.md)*** indique le nombre de couches sur lesquelles la compensation des premières couches sera active.  La première couche sera réduite de la valeur de la compensation de la première couche, puis  les couches suivantes seront progressivement réduites, jusqu'à la couche indiquée par  cette valeur.

#### *[Compensation du rétrécissement des trous verticaux](../variable/hole_size_compensation.md)*

Les trous convexes seront agrandis/rétrécis dans le plan XY par la valeur configurée (négatif = vers l'intérieur, positif = vers l'extérieur, devrait être négatif car les trous sont toujours un peu plus petits à l'intérieur). Cela peut être utile pour affiner la taille des trous.

Ce paramètre se comporte de la même manière que la compensation de la taille XY interne, mais uniquement pour les formes convexes. Il s'ajoute à **[Compensation XY intérieure](../variable/xy_inner_size_compensation.md)**, il ne le remplace pas.

##### *[Le seuil](../variable/hole_size_threshold.md)*

Ce paramètre exprimé (en mm²) représente la zone maximale pour le trou où la compensation de la taille du trou s'appliquera pleinement. Après cela, elle se réduira à 0 pour quatre fois cette surface.

Réglez à 0 pour laisser la compensation de la taille du trou s'appliquer entièrement à tous les trous détectés.

#### *[Convertir les trous verticaux rond en Polygone](../variable/hole_to_polyhole.md)*

![Image : Polygones](./images/035.jpeg)


Lors de l'impression 3D avec les technologies fil fondu, la rétraction et la façon dont le matériau est extrudé font que les trous sont plus petits que prévu. Une façon d'y remédier est de créer des trous plus grands, mais ce n'est pas la seule façon : vous pouvez jouer avec la géométrie. Les bords sont imprimés avec précision et donc en réduisant le nombre de "côtés" des cercles ET en les plaçant à l'"extérieur" (ne pas couper les coins) du trou, vous pouvez avoir des trous fonctionnels.

Dans l'image ci-dessus, les forets entrent parfaitement dans le polygone mais ils ne peuvent pas entrer dans leur trou rond, il est trop étroit comme prévu.

##### *[La marge de circularité](../variable/hole_to_polyhole_threshold.md)*

Exprimable en mm ou en % du rayon, elle représente la défection maximale d'un point par rapport au rayon estimé du cercle.
Comme les cylindres sont souvent exportés sous forme de triangles de taille variable, le point peut ne pas être sur la circonférence du cercle. Ce paramètre vous laisse une certaine marge de manœuvre pour élargir  la détection.


Idée et mathématiques de ***polygones*** [http://hydraraptor.blogspot.com/2011/02/polyholes.html](http://hydraraptor.blogspot.com/2011/02/polyholes.html).

![Image : Modifications des couches](./images/036.png)

##### *[Torsion](../variable/hole_to_polyhole_twisted.md)*

Cette option permet de pivoter les polygones créés à chaque section [#1396](https://github.com/supermerill/SuperSlicer/issues/1396).

### Autre

![Image : Autre](./images/037.png)
#### *[Mode de découpage](../variable/slicing_mode.md)*

Utiliser 
- "Pair-impair" pour les modèles d'avions 3DLabPrint. 
- "Fermer les trous" pour fermer tous les trous du modèle.



#### *[Dissocier les objets multi-pièces](../variable/clip_multipart_objects.md)*

Lorsque vous imprimez des objets multi-matériaux, ce réglage fera en sorte que SuperSlicer rattache ensemble les parties de l'objet qui se superposent (la 2e partie sera rattachée à la 1ere, la 3e partie sera rattachée à la 1ere et la 2e, etc...).

#### *[Autoriser les couches vides](../variable/allow_empty_layers.md)*

Evite que le moteur de découpe d’afficher un message d’erreur si une couche pleine est vide et donc l'impression devra repartir dans le vide par la suite.

![](./images/038.png)

*Image : Message avec couche vide*


## Remplissage

La principale fonction du remplissage est de servir de support interne pour les couches supérieures, qui devraient autrement former un pont au-dessus d'un espace vide. Le remplissage affecte également la vitesse d'impression, la résistance structurelle, la consommation de filament et même l'apparence de l'objet terminé.

![Image : Option de remplissage](./images/039.png)


### Remplissage

Paramètres liés directement au remplissage des modèles

#### *[Densité de remplissage](../variable/fill_density.md)*

La plupart des modèles peuvent être imprimés avec un remplissage de 10-15%. Si le dessus du modèle se referme progressivement, il peut être imprimé vide (remplissage 0%), même si nous ne le conseillons généralement pas. Si vous voulez que le modèle soit plus lourd, qu'il ait une résistance à la compression plus importante ou une plus grande rigidité, vous pouvez augmenter le remplissage. Vous aurez rarement besoin d'un remplissage supérieur à 30%. Enfin, vous pouvez imprimer le modèle avec un remplissage de 100% et motif de remplissage sera alors obligatoirement rectilinéaire. Gardez à l'esprit qu'un remplissage de 100% peut avoir un impact négatif sur l'apparence de l'objet imprimé.

**Augmenter la résistance d'un modèle**

La résistance d'un modèle est surtout définie par le nombre de **périmètres (pas le remplissage)**. Si vous voulez obtenir une impression plus résistante, augmentez le nombre de périmètres. Cela dit, le remplissage augmente la résistance à la compression.

#### *[Motif de remplissage](../variable/fill_pattern.md)*

SuperSlicer vous propose de choisir entre plusieurs motifs de remplissage. Au moment de choisir un motif de remplissage, voici les choses à prendre en considération :

- La vitesse d'impression
- La densité en fonction du matériau utilisé (les couches supérieures auront de meilleurs supports avec moins de matériau)
- L'apparence
- Les supports pour les couches supérieures
- La flexibilité (pour les impressions en TPU/TPE)


#### *Options de modèles de remplissage dans SuperSlicer*

Pour couvrir le large éventail de motifs imprimés, les objets circulaires et rectangulaires ont été découpés. Le remplissage a été fixé à 10 % pour aider à illustrer les motifs de remplissage. La couche supérieure est enlevée dans les images afin de montrer le motif intérieur.

SuperSlicer vous permet de modifier le motif de la structure de remplissage imprimée, ce qui est avantageux dans certains cas d'utilisation. Par exemple :

- **Les remplissages 2D forts** sont utilisés pour les impressions de tous les jours
- **Les remplissages 2D rapides** sont utilisés pour les modèles rapides mais faibles
- **Les remplissages 3D** sont utilisés pour rendre l'objet aussi résistant dans toutes les directions
- **Les remplissages 3D flexible** sont utilisés pour les matériaux flexibles

Les options de modèle suivantes sont disponibles :

| Type de remplissage                                                                                                                                                                                                                        |         Image              |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------:|
| A. **Grille:** fort remplissage 2D                                                                                                                                                                                                         | ![](./images/040.png) |
| B. **Rectiligne :** remplissage 2D rapide                                                                                                                                                                                                  | ![](./images/041.png) |
| C. **Monotone :** *(Mode ligne)* remplissage 2D                                                                                                                                                                                   | ![](./images/040.png) |
| D. **Triangles :** fort remplissage 2D                                                                                                                                                                                                     | ![](./images/042.png) |
| E. **Etoiles :** fort remplissage 2D                                                                                                                                                                                                       | ![](./images/043.png) |
| F. **Tri-Cubique :** fort remplissage 3D                                                                                                                                                                                                       | ![](./images/044.png) |
| G. **Cubique adaptatif :** fort remplissage 3D (cela permet d'économiser de la matière par rapport à Cubique)                                                                                                                              | ![](./images/045.png) |
| H. **Support Cubique :** fort remplissage 3D                                                                                                                                                                                               | ![](./images/046.png) |
| I.  **Ligne :** remplissage 2D rapide un remplissage en forme de grille continue non orthogonale, imprimant en continu dans une direction diagonale Nécessite forcément la définition d’une longueur maximum de l’ancre de remplissage     | ![](./images/047.png) |
| J. **Concentrique :** remplissage 3D flexible                                                                                                                                                                                              | ![](./images/048.png) |
| K. **Nid d’abeille :** fort remplissage 2D                                                                                                                                                                                                 | ![](./images/049.png) |
| L. **Hexagonal 3D :** remplissage 3D flexible                                                                                                                                                                                          | ![](./images/042.png) |
| M. **Giroïde** : Remplissage avec une résistance accrue pour un poids le plus faible.                                                                                                                                                      | ![](./images/050.png) |
| N.  **Courbe de Hilbert :** fort remplissage 2D.Théoriquement ces parcours doivent permettre de remplir tout l’espace en une fois sans rétracter la buse. Ici ce n’est pas le las c’est une mauvaise implémentation des courbes de Hilbert | ![](./images/040.png) |
| O. **Spirale d’Archimède** : remplissage 2D flexible                                                                                                                                                                | ![](./images/042.png) |
| P. **Spirale Octagramme** (Etoile) :** remplissage flexible 2D                                                                                                                                                                             | ![](./images/051.png) |
| P. **Rectiligne aléatoire :** remplissage 2D                                                                                                                                                                             | ![](./images/052.png) |
| P. **Cubique adapatatif :** fort remplissage 3D                                                                                                                                                                             | ![](./images/052.png) |
| P. **Support Cubique :** fort remplissage 3D                                                                                                                                                                             | ![](./images/052.png) |

##### *Remplissage gyroïde*

Le remplissage gyroïde est l'un des remplissages les plus polyvalents.

- Il est tridimensionnel- ce qui lui confère **une résistance égale dans toutes les directions**
- Il peut être imprimé plutôt **rapidement**
- Il ne **se croise pas** sur la même couche
- Il a un **bon rapport résistance/poids**

Pour plus d’information sur le remplissage Gyroïde <https://mathcurve.com/surfaces/Gyroide/gyroide.shtml>

#### *[Motif de remplissage couche pleine](../variable/solid_fill_pattern.md)*

Vous pouvez choisir un motif de remplissage personnalisé qui ne s'appliquera aux couches pleines. La couche supérieure visible utilisera elle sont propre réglage avec le Motif de remplissage du dessus.

#### *[Motif de remplissage du dessus](../variable/top_fill_pattern.md)*

Vous pouvez choisir un motif de remplissage personnalisé qui ne s'appliquera qu'à la couche supérieure visible, et pas aux couches pleines adjacentes du dessous. 

#### *[Motif de remplissage du dessous](../variable/bottom_fill_pattern.md)*

Vous pouvez choisir un motif de remplissage personnalisé qui n'affectera que la couche inférieure visible, et pas les couches pleines adjacentes au-dessus.

Les options de modèle suivantes sont disponibles :

| Type                          | Image                             |
|-------------------------------|-----------------------------------|
| A. **Lissage**                |                                   |
| B. **Rectiligne**             | ![Rectiligne](./images/053.png)             |
| C. **Rectiligne (remplit)**   |                                   |
| D. **Monotone**               | ![Monotone](./images/055.png)             |
| E. **Concentrique**           | ![Concentrique](./images/058.png) |
| F. **Concentrique (remplit)** |                                   |
| G. **Courbe de Hilbert**      |                                   |
| H. **Spirale d’Archimède**    |                                   |
| I. **Spirale Octagramme**     |                                   |
| J. **Dent de scie**           |                                   |

Note : Théoriquement le mode de remplissage du dessous et dessus Rectiligne aligné devrait permettre un remplissage sans changement d’orientation entre 2 couches mais visiblement sur les versions 2.3.0 testées, le mode ne changeait pas du rectiligne standard.

Pour plus d'infos sur les remplissage [consultez la page](../pattern/pattern.md) sur les remplissages de SuperSlicer.

#### *Types de remplissage pour la couche du dessus (et du bas)*

Le fait d’éditer un remplissage ne consiste pas seulement à choisir un type de remplissage pour les parties internes de l’objet. Vous pouvez aussi modifier les types de remplissage pour les couches du haut et du bas afin d’obtenir des résultats intéressants. Cela peut être ajusté dans l’onglet **Réglages d’impression/Remplissage/Motif de remplissage du dessus (du dessous)**. Néanmoins, le fait de changer le remplissage du dessus ou du dessous provoque des **changements esthétiques** et n’améliore en rien les propriétés mécaniques du modèle.

![Remplissage des couches du dessus/dessous ](./images/069.jpeg)

*Remplissage des couches du dessus/dessous.*

Voici chacun des sept types de remplissage du dessus (et du dessous) imprimés avec un flux de 80% afin de mettre en évidence les motifs.

**Rectiligne**

Une nouvelle fois, il s’agit du type de remplissage du dessus le plus commun (et basique). Les trajets d’impression sont orientés en zig-zag pour toute la couche. Néanmoins, c’est le type de remplissage le plus simple et il **ne procure aucun avantage** d’aucune sorte (voir le remplissage monotone).

**Monotone** 

Le motif de remplissage monotone remplit la couche du dessus (ou du bas) avec des lignes parallèles, identiques à celles du remplissage de type rectiligne. Néanmoins, ce remplissage utilise **une planification de trajet avancée.** Contrairement au remplissage rectiligne, celui-ci est toujours imprimé de gauche à droite, jamais dans la direction opposée. Ce système simple permet d’obtenir **un remplissage homogène sans vilaines aspérités.** Celles-ci apparaissent en général avec d’autres remplissages lorsque les trajets gauche-droite rencontrent les trajets droite-gauche. Cette méthode en apparence simple est étonnamment difficile à intégrer. 
![Image : Remplissage rectiligne (image Prusa)](./images/070.jpeg)

différence entre remplissage Rectilinéaire et monotone ( Image Prusa)

##### *Rectiligne aligné*

Ce motif de remplissage fonctionne de la même façon que le remplissage rectiligne mais la dernière couche n’est pas imprimée à 90° de la précédente. Au lieu de cela, les trajets des deux couches sont parallèles l’un à l’autre. Cela peut aider à créer un motif de couche du dessus homogène pour les modèles qui ont des couches du dessus à différentes hauteurs (imaginez un modèle en escalier). 

##### *Concentrique* 

Le motif de remplissage concentrique copie la forme du périmètre. Si vous imprimez un cylindre, il dessinera des cercles concentriques sur le dessus du modèle. 

##### *Monotone (remplit) & Concentrique (remplit)*

Les motifs dit remplit sont identiques au motif de base mais dans leur cas les petits interstices laissés par le remplissage seront remplis de manière à ne laisser aucun vide.

![Sans remplissage des vides ](./images/sans_remplissage_vide.png) ![Avec Remplissage vide ](./images/avec_remplissage_vide.png)

##### *Courbe de Hilbert*

Il s’agit surtout d’un remplissage esthétique. S’il est imprimé à l’intérieur, le motif Courbe de Hilbert génère des formes rectangulaires, tandis que la couche du haut ressemblera davantage à **un panier en osier.** Certaines personnes disent que cela ressemble à « des vers ». Ce remplissage augmente significativement le temps d’impression du fait de sa forme complexe. 

##### *Spirale d'Archimède*

Avec les Spirales d'Archimède, la surface qui se trouve le plus au-dessus est imprimée en spirale. Ce remplissage peut permettre de gagner du temps lorsque vous imprimez certains modèles. 

##### *Spirale octagramme*

Là aussi, ce remplissage a été décrit précédemment. Il est surtout intéressant pour des raisons esthétiques, mais sa forme complexe allonge le temps d’impression.

##### *Lissage*

Remplissage de type rectiligne mais avec un deuxième passage de la buse à 90° avec une faible extrusion destinée à lisser la surface en remplissant les micro-cavités générées  par le remplissage rectiligne.

##### *Dent de scie*

Remplissage uniquement valable pour la couche supérieure. Produit un remplissage en 3D avec des picots comme des "dents de scie"
![Remplissage en "Dent de Scie" ](./images/dent_de_scie.png)

#### *[Longueur de la connexion](../variable/infill_anchor_max.md)*

Le remplissage est généralement **connecté aux périmètres** avec ce qu’on appelle une ancre, qui consiste en une courte ligne qui constitue un autre périmètre (interne) et qui se transforme en ligne de remplissage. La longueur de l’ancre de remplissage détermine quelle longueur en millimètres de cette ancre sera connectée au remplissage et aux périmètres. Si vous réglez cette valeur sur 0, le remplissage sera imprimé indépendamment sur les périmètres. Une valeur plus haute permettra d’imprimer l’ancre en tant que prolongement du remplissage. L’ancre de remplissage aide à améliorer **l’intégrité du modèle et sa solidité**. 

**[Longueur maximum de l’ancre de remplissage](../variable/anchor_length_max.md)** Cette valeur détermine la longueur maximum de l’ancre de remplissage connectant le remplissage aux périmètres.

Mettre une valeur de 1000 dans le paramètre **Longueur de la connexion** revient à fixer ce paramètre à illimité ( 0 le désactive)

![Image : Valeur de Longueur de l'ancre de remplissage à 1000](./images/071.png)
#### *[Ancrage périphérique](../variable/infill_anchor.md)*

Ce paramètre permet de relier une ligne intercalaire à un périmètre interne avec un court segment d'un périmètre supplémentaire. Si elle est exprimée en pourcentage (exemple : 15 %), elle est calculé sur la largeur d'extrusion du remplissage. 
SuperSlicer tente de relier deux lignes de remplissage proches à un court segment de périmètre. Si aucun un tel segment de périmètre plus court que `infill_anchor_max` n'est trouvé, la ligne de remplissage est connectée à un segment de périmètre sur un seul côté et la longueur du  segment de périmètre pris est limité à ce paramètre, mais pas plus long que `anchor_length_max`.

Définissez ce paramètre sur **zéro** pour désactiver l'ancrage des périmètres connectés à une ligne de remplissage unique.

### Réduction du temps d’impression

SuperSlicer propose deux méthodes pour économiser du temps et du matériau. La première option permet de **combiner le remplissage toutes les X couches.** La valeur par défaut est réglée sur 1, c’est à dire que chaque couche de périmètre est imprimée avec une couche de remplissage (1 = ratio de 1 couche de remplissage pour 1 couche de périmètre). Le fait d’augmenter cette valeur à 2 (ratio 2:1) va permettre d’imprimer une couche de remplissage (à la hauteur de couche correspondante) toutes les deux couches de périmètre. Mais gardez à l’esprit que cette valeur ne peut pas être augmentée à l’infini. SuperSlicer vous laissera entrer une valeur très haute mais seule la valeur maximale qui est physiquement possible sera inscrite dans le G-code. Pour être plus spécifique : Si vous utilisez une buse de 0,4 mm et une hauteur de couche de 0,15 mm, le slicer ne vous permettra pas d’imprimer une couche de périmètre moins souvent que deux couches de périmètre. Sinon le remplissage serait imprimé dans le vide. Mais si vous imprimez avec une hauteur de couche de 0,05 mm (buse de 0,4 mm), vous pouvez combiner le remplissage toutes les 8 couches. La seconde méthode pour économiser du temps (et du matériau) consiste à **imprimer du remplissage seulement là où il en a besoin,** Par exemple, si vous imprimez une sphère, cette fonction ne génèrera qu’une colonne de remplissage au centre afin de soutenir d’éventuels surplombs. Le principal désavantage de cette fonction est la faible résistance à l’impact du fait du manque de remplissage dans certaines zones du modèle.

![Image : Options de réduction des temps d'impression](./images/072.png)


#### *[Combinez le remplissage toutes les X couches](../variable/infill_every_layers.md)*

Différentes hauteurs de couche seront utilisées pour le remplissage et pour les périmètres afin d'accélérer l'impression sans sacrifier sa qualité.

**Exemple :** Combiner un remplissage toutes les 3 couches, avec une hauteur de couche de 0,1 mm, le remplissage étant imprimé avec une hauteur de couche de 0,3 mm.

La hauteur de couche maximum est limitée par le diamètre de votre buse. Si vous essayez de combiner un remplissage toutes les 1+ couches avec une buse de 0,4 mm et une hauteur de couche de 0,3 mm, aucun changement ne va réellement se produire car vous ne pouvez pas imprimer des couches plus grandes que (environ) 0,32 mm (80% du diamètre de la buse).

![Image : Remplissage (en gris) imprimé avec une hauteur de couche deux fois supérieure à celle des périmètres (en orange)](./images/073.png)

Remplissage (en gris) imprimé avec une hauteur de couche deux fois supérieure à celle des périmètres (en orange)

#### *Faire remplissage seulement où cela est nécessaire*

En choisissant cette option le remplissage se fera comme pour une structure de support interne, et seule les zones ayant besoin de support génèreront sous elles un motif de remplissage. Si cette option est activée elle ralentira la génération du G-code (du fait des tests de surplomb supplémentaires requis). De plus, le remplissage ne sera probablement plus en contact avec le périmètre à certains endroits, donc utilisez cette option avec précaution.

Cette option ne prend pas le réglage de **seuil de surplomb** des supports en compte.

![Image : Sphère réalisée avec l'option de remplissage uniquement là où c'est nécessaire](./images/074.png)

Exemple d'une sphère réalisée avec l'option de _**remplissage uniquement là où c'est nécessaire**_.

**Note** : Les quelques essais réalisés n’ont pas permis de mettre en évidence un intérêt fort sur cette option. En l’absence de réglage du surplomb il est difficile de bien gérer cette option.

#### *Couche dense de soutient*

Permet la création d'une couche de support sous la première surface pleine interne. Cela vous permet d'utiliser un taux de remplissage très bas sans compromettre la qualité du remplissage solide. 

Le remplissage dense utilise une densité de remplissage de 50%.

Lorsque ce commutateur est activé, si le remplissage est inférieur à 40%, il recherche une zone supportée sous chaque surface pleine, avec seulement des lignes droites entre les périmètres. Lorsqu'il en trouve une, il utilise un processus de remplissage spécial qui pose un périmètre (avec un chevauchement, de sorte qu'il est ~supporté par le périmètre interne actuel et ensuite un remplissage rectiligne de 42% à l'intérieur. Cela permet d'éviter tout gondolage qui pourrait ruiner votre surface supérieure, et de s'assurer que tout peut être supporté même avec un taux de remplissage de 0%.

![Image : A gauche sans le support dense  A droite avec (Image Merill)](./images/075.jpeg)


#### *Algorithme*

Choisissez la disposition de la couche dense. L'option automatique permettait d'essayer de dessiner la plus petite surface avec uniquement des lignes droites à l'intérieur du remplissage peu dense. 'Ancrés' ne fait qu'agrandir un peu (par 'Marge de remplissage par défaut') les surfaces qui nécessitent un meilleur support.


### Avancé

SuperSlicer vous permet d’ajuster encore davantage les motifs de remplissage ! Si vous basculez en mode Avancé ou Expert, vous trouverez bien plus de réglages dans l’onglet Remplissage. Voyons donc tous les réglages liés aux remplissages, qu’ils soient dans le mode Avancé ou Expert 

Ces réglages de remplissage sont vraiment des paramètres avancés et la plupart des utilisateurs d’imprimantes 3D n’en auront vraisemblablement jamais besoin. Néanmoins, il y aura peut-être quelques situations où vous voudrez les ajuster, donc voyons ce qu’ils permettent de faire :

#### *Remplissage plein toutes les X couches*

Cette fonctionnalité permet d'imposer une couche pleine après chaque nombre de couches donné. Cela peut être utile pour augmenter la résistance de la pièce imprimée, néanmoins d'autres options, comme l'augmentation du nombre de périmètres ou le pourcentage de remplissage sont préférables. Cela peut également servir à créer des cellules internes séparées afin d'accroitre l'isolation thermique.

**Régler sur 0 pour désactiver.**

L’impression d’un remplissage plein toutes les X couches** peut être pratique lorsque vous voulez améliorer la solidité d’un modèle (le fait d’augmenter le nombre de périmètres fonctionne mieux, cela dit) ou pour diviser le remplissage en cavités multiples afin de permettre à un objet de flotter sur l’eau. Cette fonction permet simplement l’impression d’un remplissage plein à intervalles réguliers.

#### *Angle du remplissage*

Angle par défaut pour l'orientation du remplissage. Un quadrillage sera appliqué à certains motifs de remplissage.

**Les ponts** seront imprimés en utilisant la meilleure direction détectée par SuperSlicer, donc ce réglage ne les concerne pas.

#### *Surface de seuil pour le remplissage plein*

Impose le remplissage plein pour des zones présentant une surface plus petite que celle définie par le seuil spécifié.

**Régler sur 0 pour désactiver.**

![Image : Seuil de remplissage plein de 0 (à gauche), 15 (milieu), 100 (à droite)](./images/076.png)

Le paramètre Surface de seuil pour le remplissage plein est surtout pratique pour les petites pièces ou celles qui sont complexes. Grâce à ce réglage, vous pouvez déterminer comment les grandes et petites cavités du modèle seront comblées avec un remplissage à 100%. Cela peut aider à rendre les petites pièces plus solides.

#### *L’angle de remplissage*

L’angle de base pour le remplissage, fait pivoter le motif selon l’angle choisi.


#### *L’angle pour les ponts*

L’angle pour les ponts est calculé automatiquement par SuperSlicer. Si vous laissez 0°, SuperSlicer choisira la meilleure valeur. Néanmoins, vous pouvez la changer manuellement si vous le souhaitez. Pour imprimer avec un angle de pontage égal à 0° il faut en fait régler sur 180°.

> **Utilisez 180° pour un angle nul.**

#### *L’angle d’incrément*

L’angle d’incrément cet angle est ajouté à chaque couche à l'angle de base pour le remplissage. Peut être utile pour une raison esthétique, ou pour être sûr de toucher chaque caractéristique de l'objet même avec un remplissage très faible. 

> **Régler sur 0 pour désactiver.**

#### *Ancrage des remplissages plein de X mm*
Ce paramètre fait croître les couches haut / bas / pleines par la valeur renseignée pour les ancrer dans la pièce.

> **Mettez 0 pour le désactiver.** Peut être un% de la largeur du périmètre.

##### *Pour les ponts*

Ce paramètre fait croître les couches en pont par la valeur renseignée pour les ancrer dans la pièce.

> **Mettez 0 pour le désactiver.** Peut être spécifié par un % de la largeur du périmètre externe.

#### *Rétracter uniquement lors du franchissement de parois*

Désactiver la rétraction lorsque le chemin de déplacement ne franchit pas les périmètres des couches extérieures (et donc les coulures seront probablement invisibles).

La rétractation seulement lors du franchissement de parois peut réduire un peu le temps d’impression et augmenter l’intégrité du remplissage. Le fait de désactiver les rétractions va accroitre les écoulements de filament non-visibles (cachés dans le modèle). Les rétractations resteront activées pour les périmètres.

#### *Remplissage avant les périmètres*

Cette option inverse l'ordre d'impression des périmètres et du remplissage, ce dernier étant alors imprimé en premier. L’impression du remplissage avant les périmètres peut parfois être utile pour l’impression de surplombs où les périmètres n’ont rien à quoi se rattacher. Néanmoins, le remplissage peut impacter négativement la qualité de la surface externe. La seconde utilisation de cette méthode concerne les MMU2s, pour lesquelles la purge des couleurs se fait plus efficacement – la couleur est nettoyée dans le remplissage et le périmètre est imprimé avec une couleur nette.

### Options avancées de remplissage

Ces options sont actives à condition que le type **Lissage** soit sélectionné pour les remplissages des couches pleines ou du dessus.

#### *[Réglage du remplissage pour le lissage (Distribution) ](../variable/fill_smooth_distribution.md)*

C'est le pourcentage du débit qui est utilisé pour la deuxième passe de lissage. Typiquement 10-20%. Ne devrait pas être supérieur à 20%, à moins que votre largeur d'extrusion soit largement supérieure à celle de votre buse. Une valeur trop faible et votre extrudeuse va manger le filament. Une valeur trop élevée et la première passe ne sera pas bien imprimée.

#### *[Espacement des lignes de lissage](../variable/fill_smooth_width.md)*
Il s'agit de la largeur de la passe de lissage, en % de l'extrusion du remplissage supérieur la largeur, ne doit pas être supérieure à 50% (deux fois plus de lignes, 50% de chevauchement). Il n'est pas nécessaire de descendre en dessous de 25% (quatre fois plus de lignes, 75% de chevauchement). 

Si vous avez des problèmes avec votre processus de lissage, n'oubliez pas de regarder le débit->débit du pont supérieur, car ce paramètre doit être réglé à min 110% pour s’assurer d'avoir assez de plastique dans la couche supérieure. Une valeur trop basse fera que votre extrudeuse mangera le filament.

![Image : Options avancées de remplissage](./images/077.png)

### Lissage Post-traitement

Le lissage permet d’obtenir **une surface lisse** sur les plans horizontaux – les trajets du filament sont presque invisibles. Comment cela est-il possible ? La buse chaude passe sur la surface **une fois supplémentaire mais avec un débit de filament réduit.** Le fait d’activer ou de désactiver le lissage, et de choisir ou pas le type de lissage (toutes les surfaces, uniquement la surface la plus au-dessus, toutes les surfaces pleines) devrait suffire à la plupart des utilisateurs d’imprimantes 3D. Néanmoins, peut-être voudrez-vous ajuster le ratio de flux ou l’espacement entre les passages du lissage. Le **ratio de flux** est réglé en tant que pourcentage de la hauteur de couche normale, et **l’espacement entre les passages du lissage** détermine à quelle distance les lignes parallèles tracées par la buse doivent se trouver les unes par rapport aux autres. Les valeurs de ces paramètres sont réglées sur des valeurs optimales, mais vous pouvez les modifier à votre guise si le résultat ne vous convient pas.

![Image : Lissage (Image Prusa)](./images/078.jpeg)


Si vous augmentez **le débit**, vous risquez d’avoir des résidus de matériau sur la surface. De plus, le passage de la buse sera visible. Un débit moins important, par contre, rendra les passages sur la dernière couche visibles du fait du manque de matériau venant combler les creux. **L’espacement entre les passages du lissage** A également un impact important sur l’apparence de la couche du dessus. Afin de faciliter l’explication, nous allons faire une comparaison avec un chasse-neige. Imaginons que vous n’utilisiez qu’une partie de la lame du chasse-neige pour pousser la neige – cela va retirer une certaine quantité de neige et aussi dégager une partie de la route. Maintenant, si vous enfoncez complètement la lame du chasse-neige et poussez vers l’avant, vous allez dégager un passage, mais vous allez laisser derrière vous l’excès de neige. 

#### *Qu'est-ce que le lissage et comment fonctionne-t-il ?*

Le lissage permet de lisser les surfaces planes en effectuant une deuxième phase de remplissage spéciale sur la même couche.

Lorsque la buse chaude se déplace sur la couche supérieure qui vient d'être imprimée, elle aplatit tout plastique qui aurait pu se recroqueviller. La buse extrude également **une petite quantité de filaments** pour remplir les trous de la surface supérieure. L'espacement entre les différentes passes de repassage est généralement une fraction du diamètre de la buse. Cela signifie que la buse passera plusieurs fois au même endroit. Le lissage est effectué à un angle fixe de 45 degrés par rapport à la première phase de remplissage normal de la surface supérieure, car cette approche donne de meilleurs résultats.

![Image : Lissage Désactivée (à gauche), Lissage Activée (à droite) (Image PrusaSlicer)](./images/079.jpeg)


![Image : Comparaison macro du Lissage Désactivée (à gauche) et du Lissage Activée (à droite) (Image PrusaSlicer)](./images/080.jpeg)


#### *Les inconvénients*

Le principal inconvénient est **l'augmentation du temps d'impression**, car la deuxième phase de remplissage du haut est effectuée avec un très faible espacement entre les lignes de repassage. Vous pouvez voir combien de temps d'impression sera consacré au lissage dans l'aperçu.

Si vous repassez une grande surface, sur certaines machines, vous risquez de constater un **fluage de chaleur** et, éventuellement, un bouchage de la partie chaude parce que l'extrusion est très petite et lente pendant le repassage. Cela peut poser un problème surtout lors de l'impression avec du PLA, en raison de sa faible résistance à la température. Le risque est accru pendant les canicules d'été.

Un autre inconvénient est que les bords seront un peu flous ou moins tranchants. Le parcours de repassage est prévu pour une petite extrusion, mais la buse est physiquement toujours de la même taille, de sorte qu'un peu de plastique va saigner sur le bord.

#### *Quand utiliser le lissage*

Le lissage est utile pour les impressions à surface plane, **comme les plaques d'identification, les logos, les badges, les boîtes, les couvercles,** etc.

Le lissage peut également être utile lorsque vous souhaitez coller deux pièces ensemble et que vous avez besoin que les surfaces soient aussi plates que possible afin de réduire au maximum l'écart entre elles.

![Image : Utilisation du lissage (image prusa)](./images/081.jpeg)


**Le lissage n'est pas utile pour les objets ronds, les Figures et les formes organiques en général**. Il n'est pas non plus utile pour les objets qui présentent des zones plates, mais ces zones plates ne sont pas alignées parallèlement au plateau d'impression. Cela dit, le lissage n'aura pas d'impact négatif significatif lors de l'impression de tels modèles, il ne fera qu'augmenter inutilement le temps d'impression.

![Image : Le lissage a peu ou pas d'effet sur les surfaces non planes, Lissage non actif (à gauche), Lissage actif allumé (à droite) (Image Prusa)](./images/082.jpeg)

Le lissage a peu ou pas d'effet sur les surfaces non planes, Lissage non actif (à gauche), Lissage actif allumé (à droite) (Image Prusa).

Certains modèles peuvent être imprimés à l'envers. La couche inférieure imprimée sur la plaque de construction sera généralement encore plus lisse qu'une couche supérieure repassée. Et vous pouvez imprimer une texture dans l'impression, en fonction de la feuille d'impression que vous utilisez.

Le **remplissage monotone** est une autre caractéristique qui améliore la qualité des couches supérieures. Utilisez-le en combinaison avec le lissage pour obtenir les meilleurs résultats. Dans les profils Prusa originaux, le remplissage monotone est déjà défini comme le motif de la couche supérieure par défaut.

#### *Comment activer le lissage pour tous les modèles*
Le lissage n'est pas disponible dans le mode Simple, alors passez en mode Avancé ou Expert.

Sélectionnez ensuite [**Paramètres d'impression - Remplissage - Lissage en Post-traitement - Permettre le lissage en post-traitement.**](#activer-le-lissage)

![Image : Activation du lissage](./images/083.png)

#### *Comment activer le lissage uniquement pour le modèle sélectionné*
Tout d'abord, passez en mode Expert, le lissage pour les modèles individuels n'est activé que dans ce mode. Faites un clic droit sur un modèle et sélectionnez **Ajouter des réglages - lissage** dans le menu contextuel. Cochez **Activer** le lissage, vous pouvez également sélectionner le reste des paramètres de repassage afin de les personnaliser modèle par modèle. Vous pouvez maintenant modifier les paramètres de repassage pour ce modèle à l'aide du panneau de droite.

![Image : Ajout du lissage](./images/084.jpeg)



Si vous avez plusieurs instances du même objet sur la plaque de construction et que vous souhaitez activer le repassage pour l'une d'entre elles, vous devez d'abord cliquer avec le bouton droit de la souris sur le modèle et choisir "***Définir comme Objets séparés***" dans le menu contextuel. Sinon, vous l'activerez pour toutes les instances, car elles partagent tous les paramètres.

#### *Modificateurs - Comment activer le lissage uniquement pour certaines surfaces*

Vous pouvez utiliser les modificateurs de plage de hauteur ou les maillages modificateurs pour activer le lissage juste pour une partie d'un modèle (dans le mode **Expert**).

##### *Modificateur de la plage de hauteur*

Comme le lissage ne fonctionne que sur des surfaces planes, il est logique d'utiliser un modificateur de hauteur pour spécifier un intervalle vertical, où le lissage sera utilisé.

1. Cliquez avec le bouton droit de la souris sur un modèle et sélectionnez **Modificateur de la plage de hauteur**.
1. Spécifiez la hauteur de départ et la hauteur d'arrêt dans le panneau de droite
1. Cliquez avec le bouton droit de la souris sur la roue dentée située à côté du modificateur de la plage de hauteur dans le panneau de droite
1. Sélectionnez **Ajouter des réglages - Lissage**
1. Cochez Activer le lissage, vous pouvez maintenant activer le lissage uniquement pour cette partie dans le panneau de droite


##### *Maillage modificateur*

1. Avec le bouton droit de la souris sur un modèle et sélectionnez **Ajouter un modificateur**
1. Vous pouvez soit utiliser une forme de base (boîte, cylindre), soit utiliser **Charger**... pour importer un maillage personnalisé comme modificateur
1. Positionnez le modificateur de manière à ce qu'il chevauche la partie du modèle que vous souhaitez
1. Cliquez avec le bouton droit de la souris sur la roue dentée située à côté du modificateur dans le panneau de droite
1. Sélectionnez **Ajouter des réglages - Lissage**
1. Cochez Activer le lissage, vous pouvez maintenant activer le lissage uniquement pour cette partie dans le panneau de droite


#### *[Type de lissage](../variable/ironing_type.md)*

##### *Toutes les surfaces de dessus*

La buse lissera la couche supérieure de chaque surface (la dernière couche de chaque zone plane).

##### *Surface supérieure uniquement*

Seule la toute dernière couche de l'objet sera lissée. Cela signifie que dans le cas d'un texte en relief (orienté parallèlement au lit d'impression), seule la partie supérieure des lettres sera repassée, mais pas l'espace entre les lettres.

![Image : Toutes les surfaces supérieures (à gauche), Surface supérieure seulement (à droite)](./images/085.jpeg)


##### ***Toutes les surfaces pleines***

Cette option ne fonctionne pas correctement pour le moment.

Chaque couche recevra une passe de lissage. Une fonction expérimentale destinée à être utilisée avec un remplissage à 100% pour créer des objets plus transparents.

#### *[Débit](../variable/ironing_flowrate.md)*

Pourcentage d'un débit par rapport à la hauteur de couche normale de l'objet a utiliser pour le lissage. La valeur par défaut est fixée à 15%

#### *[Espacement des lignes de lissage](../variable/ironing_spacing.md)*

Distance entre les différentes lignes de lissage. Cette valeur doit être inférieure au diamètre de votre buse. De ce fait, la buse passera plusieurs fois sur le même point.

#### *[Vitesse du post_traitement de lissage](../variable/ironing_speed.md)*

Cette option n'est pas regroupée avec les autres paramètres de lissage. Vous la trouverez plutôt dans [**Paramètres d'impression - Vitesse - Lissage**](#vitesse). N'hésitez pas à expérimenter cette valeur, mais en général, les vitesses plus lentes sont les plus efficaces.

#### *Calibration*

Le lissage est très sensible au calibrage précis de l'extrudeuse. Pas assez et des rainures dispersées et trop brillantes seront visibles sur la couche supérieure, qui ne sera pas lissée. Trop et l'excès de plastique sera entraîné par la buse vers les bords de la surface supérieure. Le calibrage est donc une question d'essais et d'erreurs. On peut expérimenter avec le débit, la vitesse et l'espacement du repassage pour obtenir les meilleurs résultats.

#### ***Différents matériaux***

En ce qui concerne les réglages, ils ne font pas vraiment la différence entre les différents matériaux. Cependant, le repassage se fait un peu différemment selon le filament utilisé.

Le lissage PLA est très bien, mais il est plus sujet au fluage thermique (dépend de votre imprimante et de la température ambiante).

Les lissages en PETG sont très bien, mais il y a un risque accru que des filaments supplémentaires collent à la buse. Ce plastique peut s'accumuler sur la buse, devenir sombre en cas de surchauffe et finir par se fixer sur l'impression. Il en va de même pour le FLEX, mais de façon beaucoup plus prononcée.

Les lissages ASA fonctionnent incroyablement bien, produisant des surfaces supérieures super lisses.

Lorsque nous avons essayé de lisser des filaments remplis de bois, nous n'avons pas obtenu de très bons résultats. Mais votre expérience peut varier.

## Jupe et bordure

### Jupe

La jupe est un contour imprimé autour de tous les modèles sur le plateau d'impression. Elle est imprimée avant les modèles et son objectif est principalement de **stabiliser le flux** du filament à travers la buse.

La jupe est également utile pour **vérifier l'adhérence de la première couche** sur le plateau d'impression. Puisqu'elle est imprimée avant les modèles, vous pouvez changer rapidement l'**Ajustement en direct de l'axe Z** si vous voyez que la première couche ne colle pas correctement ou est trop écrasée par la buse.

![Image : Réglage Jupe et Bordure](./images/086.png)

#### *[Boucles (minimum)](../variable/skirts.md)*

Nombre de boucles de la jupe. Si la **Longueur Minimale d'Extrusion** est paramétrée, le nombre de boucles minimal sera plus grand que celui configuré ici.

> **Mettez à 0 pour désactiver** complètement la jupe.

#### *[Distance de l'objet](../variable/skirt_distance.md)*

Distance entre le la jupe et le ou les objet(s). Mettez à 0 pour attacher la jupe a(ux) objet(s) (peut être utilisé comme une alternative à la bordure pour augmenter l'adhérence).

#### *[Hauteur de la jupe](../variable/skirt_height.md)*

Le nombre de couches de jupe à imprimer. 

Les jupes d'une couche de hauteur peuvent être difficiles à retirer du plateau d'impression. Les profils Prusa utilisent généralement une jupe haute de 3 couches pour cette raison.

> **Vous pouvez aussi mettre à 0 ce paramètre pour désactiver** complètement la jupe.

#### *[A partir de la bordure](../variable/skirt_distance_from_brim.md)*

La jupe est créée en rajoutant la distance de l'objet à partir de la bordure , sinon elle est créée à partir de l'objet.

#### *[Bouclier contre les flux d'air](../variable/draft_shield.md)*

Si cette option est activée, elle crée une jupe aussi haute que l'objet le plus haut de la scène. Cela peut être utilisé pour protéger l'ABS, l'ASA et d'autres matériaux contre la déformation en créant un microclimat autour de la pièce imprimée et en protégeant l'impression d'un courant d'air/du vent.

Les caractéristiques du bouclier vont dépendre des réglages de la jupe avec notamment le nombre de boucles qui va constituer le bouclier.

![Image : Exemple de bouclier réglé avec 3 contours](./images/087.png)  ![Exemple de bouclier réglé avec 3 contours](./images/088.png)


#### *[Bordure](../variable/skirt_brim.md)*

Lignes de bordure supplémentaire qui sera rajouté à la jupe. Utile par exemple si la jupe est utilisé en bouclier contre les flux d'air afin d'assurer l'adhérence du bouclier sur le plateau d'impression.


#### *[Longueur minimale de la jupe](../variable/min_skirt_length.md)*

Force plus de boucles de jupe lorsque cela est nécessaire pour garantir que la quantité minimale de filament définie ici est extrudée avant la fin de la jupe. Pour les machines multi-extrudeurs, ce minimum s'applique à chaque extrudeur.

![Image : Jupe](./images/089.jpeg)


### Bordure
Avant d'envisager d'appliquer un matériau pour une meilleure adhésion sur le plateau, envisagez d'utiliser l'**option** **Bordure** dans SuperSlicer qui augmente la surface de la première couche. Vous pouvez définir manuellement la taille de la bordure dans **SuperSlicer** en allant dans **Réglages d'impression - Jupe et bordure - Bordure**. Généralement, il est conseillé d'utiliser au moins un bord de 3 mm pour augmenter l'adhérence.

Vous devriez envisager d'utiliser l'option bordure lors de l'**impression de :**

- Objets hauts avec une petite base
- Plusieurs petits objets à la fois

![Image : Bordure](./images/090.jpeg)



Quand la **Compensation de l'effet patte d'éléphant** est activée, un petit espace apparaît entre le modèle et la bordure dans l'aperçu.

#### *[Largeur de la bordure](../variable/brim_width.md)*

Largeur horizontale de la bordure qui sera imprimée autour de chaque objet sur la première couche.

#### *[Bordure à l’intérieur des trous](../variable/brim_inside_holes.md)*

Permet de créer une bordure sur un ilot lorsqu'il est à l'intérieur d'un trou (ou entourée par un objet).

![Image : Bordure sur ilot à l’intérieur des trous](./images/091.jpeg)


#### *[Largeur de bordure intérieure](../variable/brim_width_interior.md)*

Largeur de la bordure intérieure, Elle sera imprimée à l'intérieur des trous d'un objet sur la première couche.

#### *[Bordure sur les coins](../variable/brim_ears.md)*

Option pour ne mettre une bordure qu'autour des arrêtes saillantes du modèle

##### *[Angle maximal](../variable/brim_ears_max_angle.md)*

Angle maximum pour ajouter une bordure de coin.

> **Si mis à 0, aucune bordure ne sera créée.**

Si mis à environ 178, la bordure sera créée autour de toutes les arrêtes sauf les sections droites.

##### *[Longeur de détection](../variable/brim_ears_detection_length.md)*

La géométrie sera décimée avant de détecter les angles aigus. Ce paramètre indique la longueur minimale de la déviation après décimation.

> **Mettre 0 pour désactiver la fonction.**

##### *[Motif](../variable/brim_ears_pattern.md)*

Motif pour le coin. Le concentrique est celui par défaut. Le rectiligne a un périmètre autour de lui, vous pouvez l'essayer si le concentrique a trop de problèmes pour coller à la plaque de construction.

![Image : Bordure sur coin](./images/092.png)


#### *[Espacement de la bordure](../variable/brim_offset.md)*

Distance entre la bordure et la pièce. Doit être maintenue à 0, sauf si vous rencontrez de grandes difficultés pour les séparer. Elle est soustraite à [brim_width](../variable/brim_width.md) et [brim_width_interior](../variable/brim_width_interior.md), elle doit donc être inférieure à celles-ci.

![Image : Options Bordure](./images/093.png)

## Support

Les imprimantes 3D fonctionnent en posant une couche sur une couche de plastique pour créer un objet 3D. Chaque nouvelle couche doit être supportée par celle qui se trouve en dessous. Si une partie de votre modèle commence dans le vide et n'est supportée par aucun élément en dessous, vous devez ajouter une structure de support supplémentaire pour garantir une impression réussie.

Cela vaut la peine d'envisager de modifier l'orientation du modèle ou de diviser le modèle en plusieurs parties afin de réduire éventuellement les surplombs et par conséquent la quantité de supports générés.

SuperSlicer peut à la fois détecter les zones qui ont besoin de supports et les générer **automatiquement** à ces endroits.

Vous pouvez également définir manuellement les supports en utilisant :

- **Supports peints**
- **Générateurs/Bloqueurs de supports**

Les supports peuvent être activés à partir du **panneau de droite** ou dans **Réglages d'impression - Support - Générer des supports**.

Lorsque l'impression se termine, selon la géométrie du modèle et le matériau utilisé, la structure de support peut souvent être facilement retirés à mains nues. Vous pouvez utiliser une pince pour avoir une meilleure prise dans des endroits autrement difficiles à atteindre. Un scalpel ou un couteau utilitaire peuvent également être utilisés pour retirer proprement un morceau de support qui semble être collé au modèle.

Les morceaux de supports peuvent être étonnamment tranchants et sont parfois violemment éjectés dans une direction aléatoire après leur retrait. Lorsque vous rencontrez des supports difficiles à retirer, pensez à porter des lunettes de protection (cela semble stupide jusqu'à ce que vous soyez touché à l'œil pour la première fois).

### Supports partout

Les supports peuvent se développer à la fois à partir du plateau d'impression et de toute surface de modèle si nécessaire. 

Cela garantit que chaque surplomb et toutes les parties commençant dans le vide seront supportées. Cependant, de petites imperfections peuvent apparaître sur la surface où les supports ont commencé à se développer.

![Image :* Gestion du mode de supports depuis le ***panneau de droite**](./images/094.png)


### Supports sur le plateau uniquement

Crée uniquement des supports qui ont leur base au niveau du plateau d'impression.

![Image : Supports sur le plateau uniquement (à gauche), Supports partout (à droite)](./images/095.jpeg)


### Uniquement pour les générateurs de supports

La génération de supports automatique est activée uniquement pour les zones marquées avec un générateur de supports. Cette option est essentiellement un raccourci qui active **Paramètres d'impression - Supports - Générer des supports**, mais désactive **Paramètres d'impression - Supports - Supports générés automatiquement**.

### Activation/désactivation des supports pour chaque modèle

Il est possible d'imprimer plusieurs objets à la fois chacun avec leurs propres paramètres de supports. Par défaut, tous les modèles sont affectés par les paramètres globaux. Vous pouvez les remplacer en faisant un **clic droit** sur un modèle dans la vue 3D et en sélectionnant **Supports**. Vous pouvez également cliquer avec le bouton droit sur l'icône d'édition dans la Liste d'objets.

Une nouvelle fenêtre apparaîtra dans le panneau de droite appelée **Paramètres de l'objet à modifier - Supports**. La modification de ces paramètres affectera uniquement l'objet concerné et ses instances. Vous pouvez supprimer les paramètres remplacés en cliquant sur l'icône croix rouge. Si vous le faites, les paramètres globaux seront à nouveau appliqués.

![Image : Réglages de l'Objet à modifier - Supports](./images/096.png)

### Générateur/Bloqueur de supports

Les supports automatiques peuvent parfois apparaître dans des endroits difficiles d'accès, ce qui entraîne un retrait fastidieux des structures de support. Si vous pensez qu'une telle partie du modèle pourrait être imprimée sans supports, mais ni le paramètre **Seuil de surplomb** ni l'option **Supports sur le plateau uniquement** n'ont aidé, vous pouvez ajuster les supports manuellement.

À partir de SuperSlicer 2.3, vous pouvez également utiliser les Supports peints.

Faites un **clic-droit** sur un modèle et choisissez soit un **Bloqueur de supports ou un Générateur de supports**.

**Mode Simple** - Les générateurs/bloqueurs sont toujours en forme de pavé

**Mode Avancé** - Formes de pavé/cylindre/sphère/dalle

**Mode Expert** - Option pour charger une géométrie externe en tant que bloqueur/générateur

Les bloqueurs et les générateurs de supports peuvent être manipulés avec les outils habituels de déplacement, rotation et mise à l'échelle. Vous pouvez également les dupliquer rapidement par copier-coller.

### Bloqueur de supports

Les bloqueurs de support sont utiles lorsque vous êtes généralement satisfait des supports automatiques et que vous souhaitez simplement supprimer certains d'entre eux. Concentrez-vous sur le placement des bloqueurs là où les supports rencontrent l'objet, le reste de la structure de support en-dessous sera supprimé automatiquement.

### Générateur de supports

Les générateurs de supports sont excellents dans les situations où seules quelques parties de l'objet doivent être supportées, mais l'algorithme automatique place les supports sur tout le modèle. Dans cette situation, n'oubliez pas de basculer le mode de support sur Seulement pour les générateurs de supports. 

C'est moins courant, mais vous pouvez également utiliser des générateurs de support avec la génération automatique activée.

Une autre utilisation intéressante des générateurs de supports est de diviser les ponts longs en plus petits en plaçant un support au milieu du pont. Vous pouvez répéter ce processus et imprimer des ponts plus courts et presque parfaits tout en facilitant le retrait des supports.

#### *[Générer des supports](../variable/support_material.md)*
Les supports sont désactivés sauf si un modèle a un écrasement pour ce paramètre.

#### *[Supports générés automatiquement](../variable/support_material_auto.md)*

Lorsque cette option est désactivée, la détection de surplomb est désactivée. Seuls les générateurs de supports génèrent des supports.

#### *[Seuil de surplomb](../variable/support_material_threshold.md)*

La valeur de seuil de surplomb représente la pente la plus horizontale (mesurée à partir du plan horizontal) que vous pouvez imprimer sans support (90 = vertical).

La modification de cette valeur est un moyen rapide d'ajuster la quantité de supports générés.

Plus la valeur est faible, moins de supports seront générés.

![](./images/097.png)

1. La valeur du seuil de surplomb et comment elle est mesurée
1. Seuil de surplomb 55
1. Seuil de surplomb 35
1. Seuil de surplomb 15

#### *[Renforcer des supports sur le(s) X première(s) couches](../variable/support_material_enforce_layers.md)*

Générer des supports pour le nombre de couches spécifié à partir du bas, que les supports normaux soient activés ou non et sans tenir compte des seuils d'inclinaison. Ceci est utile pour obtenir une meilleure adhérence pour des objets ayant une surface de contact très fine ou limitée sur le plateau.

![Image : Générer des supports sur les 100 premières couches](./images/098.jpeg)* 


L’option **[Générer des supports](../variable/support_material.md)** doit être activé à minima pour obtenir ces X premières couches.

### Radeau

#### *[Couches du radeau](../variable/raft_layers.md)*

L'objet sera surélevé de ce nombre de couches et des supports seront générés en-dessous. Une fois l'impression terminée, vous pouvez saisir le radeau et le décoller de la pièce.


#### *[Hauteur de couche](../variable/raft_layer_height.md)*

Hauteur maximale de la couche pour le radeau, après la première couche qui utilise la première hauteur de couche, et avant les couches  d'interface.


#### *[Hauteur de la couche d'interface](../variable/raft_interface_layer_height.md)*

Hauteur maximale de la couche pour l'interface du radeau.

#### *[Densité de la première couche](../variable/raft_first_layer_density.md)*

Densité de la première couche du radeau et des supports.

#### *[Expansion de la première couche](../variable/raft_first_layer_expansion.md)*

Expansion de la première couche du radeau ou des supports  pour avoir une meilleur adhérence au plateau d'impression.

#### *[Distance Z de contact du raft](../variable/raft_contact_distance.md)*

La distance verticale entre l'objet et le radeau. Ignoré pour l'interface soluble. 

#### *[Agrandissement du raft](../variable/raft_expansion.md)*

Expansion du radeau dans le plan XY pour une meilleure stabilité.


![Image : Option pour les radeaux](./images/101.png)




### Options pour le réglage des supports


![Image : Options pour le matériau de support et le radeau](./images/102.png)

Options pour le réglage des supports


#### *[Style](../variable/support_material_style.md)*

Style et forme des support. 

La création des supports dans une grille régulière créera des supports plus stables, 

Tandis que des supports bien ajustées économiseront du matériau et réduiront les marques sur les objets.

#### *[Hauteur de la couche de support](../variable/support_material_layer_height.md)*

Hauteur maximale de la couche pour le support, après la première couche qui utilise la première hauteur de couche, et avant les couches d'interface.

#### *Distance de contact Z*

La distance verticale entre l'objet et l'interface du support.

La définition de cette valeur à 0 empêchera SuperSlicer d'utiliser le débit et la vitesse des ponts pour la première couche de l'objet.

Des valeurs comprises entre 50 et 75% de la hauteur de la couche semblent bien fonctionner.

![Image : Distance de contact Z](./images/103.jpeg)


##### *[Type](../variable/support_material_contact_distance_type.md)*

Comment calculer la distance de contact verticale Z.

- ***Depuis le filament*** : il utilise le morceau le plus proche du filament. Lorsqu'un pont est extrudé, il passe en dessous du plan actuel.

- ***Depuis le plan*** :  il utilise le plan-z. Identique à "Depuis le filament" si aucun "pont" n'est extrudé.

- ***Aucune (soluble)*** : pas de distance de contact verticale Z. Utile pour les supports solubles. 

##### *[Dessus](../variable/support_material_contact_distance_top.md)*

Distance verticale entre l’interface du support et l’objet (lorsque l’objet est imprimé sur le support).

Définir ce paramètre à 0 empêchera également SuperSlicer d’utiliser le flux et la vitesse de pont pour le premier calque d’objet.

Peut être spécifié par un % de la largeur d'extrusion utilisée pour les couches d'interface.

##### *[Dessous](../variable/support_material_contact_distance_bottom.md)*

La distance verticale entre l’objet et l’interface du support (lorsque le support est imprimé sur l’objet).

Peut être spécifié par un % de la largeur d'extrusion utilisée pour les couches d'interface.

#### *[Motif](../variable/support_material_pattern.md)*

- ***Rectiligne***  :  par défaut, généralement le plus facile à supprimer.
- ***Grille rectiligne*** :  plus solide et moins sujette à la rupture pendant l'impression par rapport au remplissage rectiligne, plus difficile à retirer.
- ***Nid d'abeille***  :  robuste, un peu difficile à enlever.


#### *[Espacement du motif](../variable/support_material_spacing.md)*

Espacement entre les lignes des supports. Augmentez-le pour faciliter le retrait des supports. Les couches d'interface du support pontent sur les lignes des supports, si vous augmentez trop cette valeur, ces ponts commenceront à s'affaisser et auront une connexion imparfaite avec le modèle.

Mettre à zéro pour obtenir des supports pleins.

Attention non seulement ce paramètre va jouer sur la distance entre les lignes mais aussi sur le débordement du support par rapport à sa zone d’appui

![Image : Augmentation de l’espacement du motif](./images/104.png)


#### *[Angle du motif](../variable/support_material_angle.md)*

Angle des lignes du motif d'interface.

#### *[Avec une enveloppe autour du support](../variable/support_material_with_sheath.md)*

Crée un périmètre unique autour des supports, ce qui les rend plus robustes, mais plus difficiles à retirer.

#### *[Rayon de fermeture](../variable/support_material_closing_radius.md)*

Crée un périmètre unique autour des supports, ce qui les rend plus robustes, mais plus difficiles à retirer.

#### *[Supports sur le plateau uniquement](../variable/support_material_buildplate_only.md)*

Les supports ne peuvent démarrer que sur le plateau d'impression. L'activation de cette option est un moyen très rapide de se débarrasser des supports excédentaires, principalement sur les formes organiques. Assurez-vous de vérifier l'aperçu et de vérifier que toutes les parties sont supportées ou à un angle de surplomb gérable par l'imprimante.

![Image : Supports partout (à gauche) vs Support sur le plateau uniquement (à droite)](./images/105.png)

Supports partout (à gauche) vs Support sur le plateau uniquement (à droite).

#### *[Distance XY entre un objet et son support](../variable/support_material_xy_spacing.md)*

Définit la largeur de l'espace entre le modèle et les supports. Une plus grande séparation XY diminue le contact des supports mais les rend plus faciles à retirer et moins sujets à la fusion avec le modèle.

Si exprimée en pourcentage (par exemple 150%), elle sera calculée à partir de la largeur du périmètre externe.

![Image : Expression en pourcentage](./images/106.jpeg)


#### *[Ne pas supporter les ponts](../variable/dont_support_bridges.md)*

Cette option, empêche la génération de supports sous les ponts.

#### *[Synchroniser avec les couches de l'objet](../variable/support_material_synchronize_layers.md)*

Les supports seront imprimés à des hauteurs de couche égales au modèle lui-même. Ceci est utile avec les imprimantes multi-matériaux, où le changement d'extrudeur est coûteux.

### Options pour l’interface des supports

#### *[Motif](../variable/support_material_interface_pattern.md)*

Motifs pour couches d'interface

- ***[Rectiligne](../pattern/pattern_rectilinear.md)*** : par défaut, généralement le plus facile à supprimer
- ***[Monotone](../pattern/pattern_monotonic.md)***  : Comme rectiligne mais en remplissage continue
- ***[Concentrique](../pattern/pattern_concentric.md)*** : Concentrique
- ***[Concentrique Remplit](../pattern/pattern_concentricgapfill.md)*** : Concentrique avec remplissage des espaces
- ***[Courbe de Hilbert](../pattern/pattern_hilbertcurve.md)*** : Courbe de Hilbert
- ***[Dent de scie](../pattern/pattern_sawtooth.md)*** : Motif en dent de scie
- ***[Lissage](../pattern/pattern_smooth.md)*** : Permet de réaliser un lissage de la dernière couche.

#### *[Espacement des interfaces](../variable/support_material_interface_spacing.md)*

Espacement entre les lignes d'interface.

#### *[Angle du motif](../variable/support_material_interface_angle.md)*

Utilisez ce paramètre pour faire pivoter le motif du matériau de support sur le plan horizontal.

#### *[Increment](../variable/support_material_interface_angle_increment.md)*

Chaque couche, ajoutez cet angle à l'angle du motif de l'interface. 0 pour garder le même angle, 90 pour croiser.

#### *[Couches d'interface supérieures](../variable/support_material_interface_layers.md)*

Les couches d'interface forment une surface plus uniforme entre l'objet et les supports. Celles-ci sont de préférence définies sur un motif beaucoup plus dense que les couches normales de support afin que vous puissiez à la fois maximiser la surface du support en contact avec le modèle pour éviter l'affaissement tout en minimisant le temps d'impression et le matériau utilisé avec un espacement de motif de support plus grand.

Cette option permet de définir le nombre de couches d'interface à insérer entre le(s) objet(s) et les supports.

Peut être réglé :
- 0 (Aucune)
- 1 (faible)
- 2 (moyen)
- 3 (fort)

#### *[Couches d'interface du dessous](../variable/support_material_bottom_interface_layers.md)*

Cette option permet de définir le nombre de couches d'interface à insérer entre le(s) objet(s) et les supports pour la partie inférieure du support.

Peut être réglé :
- Comme le dessus même nombre de couches.
- 0 (Aucune)
- 1 (faible)
- 2 (moyen)
- 3 (fort)

#### *[Espacement du motif d’interface](../variable/support_material_interface_spacing.md)*

Espacement entre les lignes des motifs d’interface.

Mettre à zéro pour obtenir des motifs d’interface pleins.

#### *[Boucles d’interface](../variable/support_material_interface_contact_loops.md)*

Recouvrir la couche de contact supérieure des supports avec des boucles.  Va créer des boucles autour du modèle.

![Image : Boucles d’interface](./images/107.png)

Désactivé par défaut.

![Image : Options pour l’interface des supports](./images/108.png)

## Vitesse

Section de réglage des vitesses dans le logiciel.

![Image : Panneau de réglage des vitesses](./images/109.png) 


### Vitesse pour les déplacements d’impression

#### *[Vitesse par défaut](../variable/default_speed.md)*

Il s'agit de la vitesse de référence à laquelle les autres vitesses 'principales' peuvent se référer par un %.
Ce paramètre ne fait rien en lui-même, il est donc désactivé à moins qu'une vitesse en dépende (un % de la colonne de gauche).
Cela peut être exprimé en pourcentage (par exemple : 80 %) par rapport à la Vitesse d'avance maximale pour l'axe X.

Mettre zéro pour utiliser la vitesse automatique pour les champs de vitesse utilisant un % de ce réglage.


#### *[Vitesse pour les parois internes](../variable/perimeter_speed.md)*

Vitesse pour les périmètres (contours, parois verticales). Réglez sur zéro pour un ajustement automatique.


#### *[Parois externes](../variable/external_perimeter_speed.md)*

Ce réglage distinct affectera la vitesse des périmètres extérieurs (ceux qui sont visibles). Si cette valeur est exprimée en pourcentage (par exemple : 80%) elle sera calculée d'après le réglage de la vitesse de périmètre susmentionnée. Réglez sur zéro pour un ajustement automatique.

#### *[Remplissage](../variable/infill_speed.md)*

Vitesse pour imprimer le remplissage interne. Réglez sur zéro pour un ajustement automatique.

#### *[Remplissage couche pleine](../variable/solid_infill_speed.md)*

Vitesse pour imprimer des zones pleines (supérieures/inférieures/parois horizontales internes). Peut être exprimée en pourcentage (par exemple: 80%) de la vitesse de remplissage par défaut susmentionnée. Réglez sur zéro pour un ajustement automatique.

#### [Remplissage couche pleine *supérieure*](../variable/top_solid_infill_speed.md)

Vitesse pour imprimer les couches pleines supérieures (ne s'applique qu'aux couches externes les plus hautes et pas aux couches internes pleines). Vous voudrez peut-être abaisser cette vitesse afin d'avoir une finition de surface plus nette. Peut être exprimé en pourcentage (par exemple: 80%) de la vitesse de remplissage plein susmentionnée. Réglez sur zéro pour un ajustement automatique.


#### *[Supports](../variable/support_material_speed.md)*

Vitesse d'impression du support.

#### *[Interface de supports](../variable/support_material_interface_speed.md)*

Vitesse d'impression des couches d'interface des supports. Si exprimée en pourcentage (par exemple 50%), elle sera calculée à partir de la vitesse d'impression des supports.

#### *[Ponts](../variable/bridge_speed.md)*

Vitesse d'impression des ponts.

#### *[Ponts internes](../variable/bridge_speed_internal.md)*

Vitesse d'impression des ponts internes.

#### *[Surplombs](../variable/overhangs_speed.md)*

Vitesse d'impression des surplombs.

#### *Vitesse de remplissage des vides*

##### *[Vitessemaximale](../variable/gap_fill_speed.md)*

Vitesse pour combler de petits interstices avec de courts mouvements en zigzag. Gardez un réglage relativement lent afin d'éviter les problèmes de vibration et de résonance. Réglez sur zéro pour désactiver le remplissage d'interstices.

##### *[Bouchon avec](../variable/gap_fill_flow_match_perimeter.md)*

Un pourcentage du débit du périmètre (mm3/s) est utilisé comme limite pour le débit de remplissage des vides remplissage de l'espace, de sorte que le remplissage de l'espace peut réduire sa vitesse lorsque les extrusions pour le remplissage des vides deviennent trop épaisses. Cela vous permet d'utiliser une vitesse de remplissage élevée, pour imprimer rapidement le remplissage des vides fin et réduire la différence de débit pour le remplissage des vides.

#### *Autre vitesse*

##### *[Murs minces](../variable/thin_walls_speed.md)*

Vitesse pour l'impression des parois minces. Les parois minces sont les extrusions externes qui ne sont pas imprimable sous forme de boucle car trop mince pour etre imprimé en 2 passages.

##### *[Lissage](../variable/ironing_speed.md)*

Vitesse du lissage, pour être active l’option de lissage des couches supérieures doit être active.



![Image : Vitesse pour les déplacements d’impression](./images/110.png) 

Vitesse pour les déplacements d’impression.

Note : Si vous fixez une vitesse à 0 cela revient à désactiver la fonction. Exemple 0 pour la vitesse de remplissage des trous enlève le remplissage des trous

![Image : A gauche le remplissage des trous est actif, A droite il est remplacé par un remplissage plein supérieure](./images/111.jpeg)


### Vitesse pour les déplacements sans impression

**Vitesse de déplacement :** Vitesse pour les déplacements (trajet entre deux points d'extrusion distants).

Possibilité de définir la vitesse pour les axes **[X/Y](../variable/travel_speed.md)** et **Z](../variable/travel_speed_z.md)** différencié.

![Image : Vitesse pour les déplacements sans impression](./images/112.png)


### Modificateurs

#### *Vitesse de la première couche*

Si exprimée avec une valeur absolue en mm/s, cette vitesse sera appliquée à tous les déplacements d'impression de la première couche, quel que soit leur type. Si exprimée comme un pourcentage (par exemple 40%), cela modulera la vitesse par défaut.

##### *[Minimum](../variable/first_layer_min_speed.md)*

Si elle est exprimée en valeur absolue en mm/s, cette vitesse sera appliquée à tous les mouvements d'impression, elle peut être écrasée par la vitesse 'par défaut' (la valeur par défaut dépend du le type de trajectoire) si elle est supérieure à celle-ci. Si elle est exprimée en pourcentage, elle sera mise à l'échelle de la vitesse actuelle.
Définir à zéro pour désactiver.

##### *[Maximum](../variable/first_layer_speed.md)*

Si elle est exprimée en valeur absolue en mm/s, cette vitesse sera appliquée à tous les les mouvements d'impression sauf le remplissage de la première couche, elle peut être écrasée par la vitesse 'par défaut' (la valeur par défaut dépend du type de trajectoire) si elle est inférieure à celle-ci. 
Si elle est exprimée en pourcentage, elle sera mise à l'échelle de la vitesse actuelle.
Définissez-la à 100% pour supprimer toute modification de la vitesse de la première couche (avec first_layer_infill_speed et first_layer_speed_min).


##### *[Remplissage](../variable/first_layer_infill_speed.md)* 

Si elle est exprimée en valeur absolue en mm/s, cette vitesse sera appliquée aux déplacements du remplissage déplacements de la première couche, elle peut être écrasée par la vitesse 'par défaut' (remplissage pleine ou remplissage si pas de fond) si elle est inférieure à cette vitesse. Si elle est exprimée en pourcentage (par exemple : 40%), elle mettra à l'échelle la vitesse de remplissage actuelle.

##### *[Sur radeau](../variable/first_layer_speed_over_raft.md)*

Si exprimée avec une valeur absolue en mm/s, cette vitesse sera appliquée comme maximum pour les mouvements d'impression de la première couche des objets au-dessus de l'interface du raft, quel que soit leur type.

#### *Petite vitesse périphérique*

Ces paramètres permettent de définir la notion de petit périmètre.

##### *[Vitesse](../variable/small_perimeter_speed.md)*

**Ce réglage distinct affectera la vitesse des périmètre ayant un rayon <= 6.5mm (les trous habituellement). Si cette valeur est exprimée en pourcentage (par exemple: 80%) elle sera calculée d'après le réglage de la vitesse de périmètre susmentionnée.**

Réglez sur zéro pour un ajustement automatique.


##### *[Longueur minimale](../variable/small_perimeter_min_length.md)*

Cela fixe le seuil de la petite longueur périmétrique. Chaque boucle dont la longueur inférieure à cela sera imprimée à une vitesse de petit périmètre.

Peut être exprimé mm ou un % du diamètre de la buse.

##### *[Longueur maximale](../variable/small_perimeter_max_length.md)*

Cela fixe la fin du seuil de la petite longueur périmétrique. Chaque boucle de périmètre inférieure à cela verra sa vitesse réduite un peu, de leur vitesse normale à cette longueur jusqu'à la vitesse du petit périmètre.

Peut être exprimé en mm ou un % du diamètre de la buse.



![Image : Modificateurs](./images/113.png)

### Contrôle de l’accélération (avancé)

#### *[Défaut](../variable/default_acceleration.md)*

C'est l'accélération sur laquelle votre imprimante sera réinitialisée après que des valeurs d'accélération spécifiques sont utilisées (périmètre/remplissage).
Vous pouvez la définir en tant que % du maximum de la limite d'accélération de la machine X/Y.
Indiquez zéro pour empêcher toute réinitialisation de l'accélération.

#### *[Périmètres](../variable/perimeter_acceleration.md)*

Permet de définir l'accélération qui sera utilisée par votre imprimante pour les périmètres.
Régler sur zéro pour désactiver l'accélération pour les périmètres.

#### *[Remplissage](../variable/infill_acceleration.md)*

Il s'agit de l'accélération que votre imprimante utilisera pour le remplissage. Régler sur zéro afin de désactiver le contrôle de l'accélération pour le remplissage.

#### *[Ponts](../variable/bridge_acceleration.md)*

L'accélération qui sera utilisée par votre imprimante pour les ponts. Régler sur zéro pour désactiver l'accélération pour les ponts.

#### *[Première couche](../variable/first_layer_acceleration.md)*

L'accélération que l'imprimante utilisera pour la première couche. Régler sur zéro afin de désactiver le contrôle de l'accélération pour la première couche.


![Contrôle de l’accélération](./images/114.png) 

### Vitesse automatique (avancé)

#### *[Vitesse d’impression maximale](../variable/max_print_speed.md)*

Cette fonction expérimentale est utilisée pour régler la plus haute vitesse que vous souhaitez autoriser.
Lorsque vous réglez les autres vitesses à 0, SuperSlicer calculera automatiquement la vitesse optimale de façon à garder une pression constante dans l'extrudeur. 

#### *[Vitesse volumétrique maximale](../variable/max_volumetric_speed.md)*

Le **réglage de la vitesse volumétrique maximale (MVS)** est l'une des **fonctionnalités les plus puissantes de SuperSlicer**. Le paramètre MVS crée essentiellement un gestionnaire pour la quantité maximale de filament que SuperSlicer tentera de faire passer à travers la hotend de votre imprimante 3D.

Cela donne aux utilisateurs de SuperSlicer un **énorme avantage**. Plutôt que d'essayer de calculer une plage de vitesses pour des combinaisons de différentes tailles de buses, hauteurs de couche ou largeurs d'extrusion, vous pouvez simplement spécifier les vitesses et les paramètres souhaités, puis laisser le MVS réguler les vitesses au moment du découpage et seulement si nécessaire.

Vitesse volumétrique maximale = Hauteur de couche x Largeur d'extrusion x Vitesse

Des valeurs MVS indépendantes peuvent être définies dans **Réglages d'impression** et **Réglages de filament**. Dans votre profil d'impression, vous aurez généralement une valeur par défaut globale basée sur votre hotend. Dans les profils de filament, vous pouvez ajuster le MVS selon vos besoins pour tenir compte des caractéristiques du filament, par exemple le diminuer pour les filaments FLEX (vous n'aurez donc pas à créer un nouveau profil d'impression pour les filaments flexibles, juste un profil de filament).

Réglez le MVS sur **zéro** (0) pour **n'avoir aucune limite**.

Le MVS est parfois appelé vitesse automatique.

#### *Le MVS dans les Réglages d'impression*

**Réglages d'impression - Vitesse - Vitesse volumétrique maximale** (Mode expert)

Cette valeur définit la vitesse volumétrique maximale globale. Même si vous réglez le MVS à une valeur supérieure dans les paramètres de filament, il ne dépassera jamais cette valeur.

![Image : Réglages d'impression - Vitesse - Vitesse volumétrique maximale](./images/115.png)

#### *Le MVS dans les Réglages du filament*

**Réglages du filament - Avancé - Vitesse volumétrique maximale** (Mode avancé) 

Cette valeur est limitée par le MVS défini dans les Réglages d'impression, vous pouvez toutefois l'outrepasser avec une valeur inférieure.

![Image : Réglages du filament - Avancé - Vitesse volumétrique maximale](./images/117.png)

La plupart du temps, ni les vitesses linéaires ni la vitesse volumétrique maximale ne sont importantes pour les petites impressions. La buse n'atteint jamais sa vitesse maximale et passe la plupart du temps à accélérer et à ralentir à des vitesses inférieures. C'est lorsque vous commencez à faire des pièces plus grandes ou à vous déplacer rapidement pour des choses comme le remplissage que cela compte. "Obéir à la limite de vitesse" avec le paramètre de vitesse volumétrique maximale évite les clics et les blocages de l'extrudeur qui peuvent provoquer un désastre à mi-chemin d'une impression de grande taille.

#### *Choix du MVS*

##### *Filaments*

Différents matériaux de filament ont des caractéristiques différentes. La viscosité, la rigidité et d'autres facteurs peuvent réduire considérablement le débit effectif.

Exemples :

|**Filament**|**Vitesse volumétrique maximale (environ)**|
| :-: | :-: |
|**PLA**|15|
|**ASA/ABS**|11|
|**PETG**|8|
|**BVOH/PVA (supports solubles)**|4|
|**FLEX (TPU/TPE)**|1-2.5|

##### *Hotends*

La vitesse volumétrique maximale globale que vous devez utiliser dépend de votre hotend. Par exemple, la hotend E3D V6 livrée avec l'Original Prusa i3 MK3/S est annoncée avec un taux de 15 mm3/s. Une valeur sécuritaire qui laisse un peu de place pour une configuration imparfaite (tension de la roue libre, buse légèrement bouchée) de 11,5 mm3/s est réaliste.

Si vous devez pousser plus de filament, une hotend plus puissante sera nécessaire. La hotend Volcano d'E3D augmente ce paramètre à environ 25 mm3/s mais nécessite la modification de l'imprimante et du firmware. D'autres types de hotend permettent des débits encore plus élevés.

##### *Diamètre de la buse*

Intuitivement, il peut sembler que le diamètre de la buse ne devrait pas affecter la quantité maximale de plastique que la hotend peut chauffer dans un laps de temps donné. Cependant, **avec des buses plus larges, vous pouvez augmenter légèrement le MVS** en raison d'une résistance mécanique plus faible - en gros, il est un peu plus facile pour le filament de passer à travers la buse.

Et vice-versa, avec des buses plus fines, vous devrez diminuer un peu le MVS. 

Avec des buses plus larges, envisagez d'augmenter la température de la buse pour permettre un MVS encore plus grand. Par exemple, vous pouvez imprimer du PLA 10-20 °C plus chaud que notre profil standard lorsque vous utilisez une buse de 0,6 mm.

**L'impression avec une buse de grand diamètre et une hauteur de couche élevée permet-elle de gagner du temps d'impression ?**

C'est une conséquence souvent négligée du MVS. Lorsque vous utilisez une buse de grand diamètre et une hauteur de couche très élevée, par exemple une buse de 0,8 mm et une hauteur de couche de 0,5 mm, **votre vitesse d'impression va en effet être plafonnée par le MVS**. Cela est inutile à moins que vous n'installiez une hotend plus puissante sur votre imprimante. Si vous remarquez dans l'aperçu que votre vitesse est limitée par le MVS, vous pouvez essayer d'augmenter la température de la buse et d'augmenter légèrement le MVS. Cependant, il peut être temps de simplement abaisser la hauteur de la couche, vous obtiendrez plus de détails sans augmenter le temps d'impression car l'imprimante pourra imprimer plus rapidement.

#### *Aperçu du MVS*

Une fois que vous avez découpé votre modèle, vous pouvez basculer le mode d'aperçu sur *Débit volumétrique* en utilisant la case de sélection dans le coin inférieur gauche.

Sur les modèles plus petits, vous remarquerez que vous n'êtes pas du tout limité par le MVS. De même, si vous imprimez avec une faible hauteur de couche, vous ne serez probablement pas limité par le MVS. 

En revanche, lors de l'impression de modèles plus grands avec des hauteurs de couche élevées, vous pouvez remarquer que la vitesse est limitée par le MVS, en particulier lors de l'impression du remplissage. Si la majorité de votre modèle est imprimée plus lentement en raison de la limite du MVS, pensez à réduire la hauteur de la couche, vous obtiendrez plus de détails "gratuitement".

![Image : réglage des hauteurs de couche](./images/118.png)

## Largeur et Débit

### [Largeur d’extrusion](../variable/extrusion_width.md)

Ce paramètre permet de régler une valeur non-nulle pour définir manuellement la largeur d’extrusion. Si la valeur reste sur zéro, SuperSlicer calcule la largeur d’extrusion en se basant sur le diamètre de la buse. Si la valeur est exprimée en pourcentage (par exemple : 230%), elle sera calculée par rapport à la hauteur de couche.

### [Espacement](../variable/extrusion_spacing.md)

L’espacement est une solution alternative de définition de la largeur de ligne. Vous pouvez spécifier soit l’un ou l’autre des paramètres. En modifiant dans une case l’autre valeur sera calculée automatiquement et vice et versa.

![Image : Basculement des définitions.](./images/119.png)

![Image : Basculement des définitions.](./images/120.png)


Le paramètre Espacement permet de régler une valeur non-nulle pour définir manuellement l’espacement entre les cordons. Si la valeur est exprimée en pourcentage, elle sera calculée par rapport à la hauteur de couche. Le Schéma suivant permet d’illustrer la différence entre Largeur et Espacement. Si le recouvrement du périmètre est fixé à 100%, les zones jaunes doivent être remplies par le chevauchement. Si le chevauchement est à 0% Largeur = espacement.

![Image : Largeur ou Espacement](./images/006.svg)

Si vous choisissez d’exprimer les valeurs en pourcentage alors le pourcentage sera utilisé dans les 2 types de spécifications.

![Image : Définition en %](./images/122.png)




![Image : Largeur & débit en mode Expert](./images/123.png)


### Largeur d’extrusion

#### *[Largeur d’extrusion par défaut](../variable/extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion. Si la valeur reste sur zéro, SuperSlicer calcule la largeur d’extrusion en se basant sur le diamètre de la buse (voir l’info-bulle concernant la largeur d’extrusion du périmètre, la largeur d’extrusion du remplissage, etc…). Si la valeur est exprimée en pourcentage (par exemple : 130%), elle sera calculée par rapport à la hauteur de couche. Ce paramètre n'est accessible que si une des valeurs de largeur d'extrusion est fixée à Zéro. Dans ce cas c'est la **Largeur par défaut** qui fixera la largeur d'extrusion du paramètre.

#### *[Première couche](../variable/first_layer_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour la première couche. Vous pouvez procéder ainsi pour obtenir des extrudats plus épais afin d’avoir une meilleure adhérence. Si la valeur est exprimée en pourcentage (par exemple : 120%), elle sera calculée par rapport à la hauteur de la première couche. Si elle est réglée sur zéro, elle utilisera la largeur d’extrusion par défaut.

#### *[Périmètre](../variable/perimeter_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement une largeur d’extrusion pour les périmètres. Vous voudrez peut-être utiliser des extrudats plus fin pour obtenir des surfaces plus nettes. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon la valeur 1.125 x diamètre de la buse sera utilisée. Si la valeur est exprimée en pourcentage (par exemple : 200%), elle sera calculée par rapport à la hauteur de couche.

#### *[Périmètre extérieure](../variable/external_perimeter_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour les périmètres extérieurs. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon la valeur 1.125 x diamètre de la buse sera utilisée. Si la valeur est exprimée en pourcentage (par exemple : 200%), elle sera calculée par rapport à la hauteur de couche.

#### *[Remplissage](../variable/infill_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour le remplissage. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon la valeur 1.125 x diamètre de la buse sera utilisée. Vous voudrez peut-être utiliser des extrudats plus épais pour accélérer le remplissage et rendre vos pièces plus solides. Si la valeur est exprimée en pourcentage (par exemple : 90%), elle sera calculée par rapport à la hauteur de couche.

#### *[Remplissage plein](../variable/solid_infill_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour le remplissage ou les surfaces pleines. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon la valeur 1.125 x diamètre de la buse sera utilisée. Si la valeur est exprimée en pourcentage (par exemple : 90%), elle sera calculée par rapport à la hauteur de couche.

#### *[Remplissage supérieur](../variable/top_infill_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour le remplissage ou les surfaces supérieures. Vous voudrez peut-être utiliser des extrudats plus fins pour remplir les zones les plus étroites et obtenir des finitions plus lisses. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon le diamètre de la buse sera utilisé. Si la valeur est exprimée en pourcentage (par exemple : 90%), elle sera calculée par rapport à la hauteur de couche.

#### *[Supports](../variable/support_material_extrusion_width.md)*

Réglez ce paramètre sur une valeur non-nulle pour définir manuellement la largeur d’extrusion pour les supports. Si la valeur reste sur zéro, la largeur d’extrusion par défaut sera utilisée si définie, sinon le diamètre de la buse sera utilisé. Si la valeur est exprimée en pourcentage (par exemple : 90%), elle sera calculée par rapport à la hauteur de couche.

Pour limiter la résistance des supports et faciliter leurs enlèvement il est possible de paramétrer une largeur d’extrusion plus faible pour les supports afin de les rendre plus fragile.

#### *[Jupe](../variable/skirt_extrusion_width.md)*

Largeur horizontale de la jupe qui sera imprimée autour de chaque objet. Si la valeur est laissée à zéro les paramètres de la première couche seront utilisés pour définir les largeurs d’extrusion sur la jupe.

![Image : Réglage des largeurs d'extrusion](./images/124.png)


### Chevauchement

![Image : Options Chevauchement](./images/125.png)


#### *[Chevauchement du périmètre](../variable/perimeter_overlap.md)*

Ce paramètre par **Défaut** vous permet de réduire le chevauchement entre les périmètres, pour réduire l'impact des artefacts des périmètres. 100% signifie qu'aucun espace n'est laissé, et 0% signifie que les périmètres ne se touchent plus.

#### *[Externe](../variable/external_perimeter_overlap.md)*

Ce paramètre vous permet de réduire le chevauchement entre les périmètres et le contour externe, afin de réduire l'impact des artefacts des périmètres. 100% signifie qu'aucun vide n'est laissé, et 0% signifie que le périmètre externe ne contribue pas au chevauchement avec le périmètre interne.

#### *[Remplir les vides entre les parois](../variable/gap_fill_overlap.md)*

Ce paramètre vous permet de réduire le chevauchement entre les périmètres et le remplissage de l'espace. 100% signifie qu'aucun espace n'est laissé, et 0% signifie que le remplissage des espaces ne touchera pas les périmètres.

#### *[Empiètement remplissage/périmètres](../variable/infill_overlap.md)*

Cette option applique un chevauchement supplémentaire entre les périmètres et le remplissage pour une meilleur fusion. En théorie, cela ne devrait pas être nécessaire, mais le jeu mécanique peut générer des espacements. Si exprimé en pourcentage (par exemple 15%), la valeur sera calculée en fonction de la largeur d'extrusion du périmètre.

![Image : Chevauchement remplissage périmètre](./images/126.png)


![Image : Chevauchement à 25% ](./images/127.jpeg)  ![Image : Chevauchement à 50%](./images/128.jpeg)

Chevauchement à 25% à gauche, 50% à droite.


#### *[Densité des lignes de pont minimum](../variable/bridge_overlap_min.md)*

Densité minimum pour les lignes des ponts. Si plus petite que 'Densité maximum des ponts' ('[bridge_overlap](bridge_overlap.md)'), alors la valeur d'overlap peut être diminuée automatiquement jusqu’à cette valeur, afin de permettre une meilleure répartition des lignes sur la largeur disponible. Si la valuer est supérieure, ce paramètre n'a pas d'effets.

#### *[Densité des lignes de pont maximum](../variable/bridge_overlap.md)*

Quantité de chevauchement entre les lignes du pont. Si vous voulez plus d'espace entre les lignes (ou moins), vous pouvez le modifier. La valeur par défaut est de 100%. Une valeur de 50% créer deux fois moins de lignes.


#### *[Chevauchement de remplissage plein](../variable/solid_infill_overlap.md)*

Ce paramètre vous permet de réduire le chevauchement entre les lignes du remplissage solide , afin de réduire le % rempli si vous voyez des signes de surextrusion sur les zones solides.



### Débit

#### *[Ratio de débit pour les ponts](../variable/bridge_flow_ratio.md)*

Ce facteur affecte la quantité de plastique utilisée pour les ponts. Vous pouvez le diminuer légèrement pour éviter l'affaissement. La valeur par défaut est généralement suffisante et vous devriez expérimenter le refroidissement (utiliser un ventilateur) avant de modifier ceci.

 ![Image : Variation du débit pour les parties en surplomb](./images/130.png)


![Image : Options de Débit](./images/131.png)

#### *[Ratio de débit Au-dessus des ponts](../variable/over_bridge_flow_ratio.md)*

Ratio de débit permettant de compenser les lacunes des couches au dessus des ponts. Utilisé pour l'étirage du motif de remplissage pour éviter les régions où la passe à faible débit ne permet pas fournir une surface lisse en raison d'un manque de plastique. Vous pouvez l'augmenter légèrement pour obtenir la couche supérieure à la bonne hauteur. 

> Maximum recommandé : 120%.

#### *[Ratio de débit Remplissage du dessus](../variable/fill_top_flow_ratio.md)*

Vous pouvez augmenter cela pour sur-extruder sur la couche supérieure s'il n'y a pas assez de plastique pour faire un bon remplissage.

#### *[Ratio de débit Première couche](../variable/first_layer_flow_ratio.md)*

Vous pouvez augmenter ce paramètre pour sur-extruder sur la première couche s'il n'y a pas assez de plastique parce que votre plateau n'est pas nivelé.

Note : N'UTILISEZ PAS CECI si votre seul problème est le nivellement du plateau, NIVELEZ VOTRE PLATEAU ! N'utilisez ce paramètre qu'en dernier recours, après l'échec de tous les calibrages.

#### *[Couper les coins](../variable/external_perimeter_cut_corners.md)*

Activez cette option pour modifier le débit afin de reconnaître que la buse est ronde et que les coins auront une forme ronde, et donc de modifier le débit pour réaliser cela et éviter la surextrusion. 100% est activé, 0% est désactivé et 50% est semi-activé.

Note : A 100%, cela change le débit de ~5% sur une très petite distance (~diamètre de la buse), donc cela ne devrait pas être perceptible à moins que vous ayez une très grande buse et une imprimante très précise.


## Extrudeuses multiples

### Extrudeuses

Définition des extrudeuses à utiliser pour la création des différentes parties de l’impression.

#### *[Extrudeur pour les périmètres](../variable/perimeter_extruder.md)*

L'extrudeuse à utiliser pour imprimer les périmètres et la bordure. La première extrudeuse a le numéro 1.

#### *[Extrudeur pour le remplissage](../variable/infill_extruder.md)*

L'extrudeuse à utiliser pour imprimer le remplissage.

#### *[Extrudeur pour le remplissage plein](../variable/solid_infill_extruder.md)*

L'extrudeuse à utiliser pour imprimer les remplissages pleins.

#### *[Extrudeur pour support/radeau/bordure](../variable/support_material_extruder.md)*

L'extrudeuse à utiliser pour imprimer des supports, du radeau ou des contours (1+,0 pour utiliser l'extrudeur actuel et limiter les changements de filament).

#### *[Extrudeur pour l’interface des supports/du radeau](../variable/support_material_interface_extruder.md)*

L'extrudeur à utiliser pour imprimer les intercalaires du support (1+,0 pour utiliser l'extrudeur actuel et limiter les changements d'outil). Cela affecte également le raft.

![Image : Extrudeurs](./images/132.png)

### Prévention des coulures

#### *[Activer](../variable/ooze_prevention.md)*

Cette option abaissera la température des extrudeurs inutilisés pour prévenir le oozing (suintement). Cela active automatiquement la génération d'une grande jupe et le déplacement des extrudeurs hors de cette jupe lors des changements de température.

#### *[Variation de température](../variable/standby_temperature_delta.md)*

Différence de température devant être appliquée quand un extrudeur n'est pas actif. Permet la génération d'un contour complet "sacrificiel" sur lequel les buses sont nettoyées régulièrement.

![Image : Prévention des coulures](./images/133.png)

### Tour de purge

#### *[Activer](../variable/wipe_tower.md)*

Les imprimantes multi-matériaux peuvent avoir besoin de préparer ou de purger leurs extrudeurs lors d'un changement d'outil. Extruder le matériau en excès dans la tour de purge.

Attention l’activation de la tour de purge n’est pas possible en mode ***Compléter les objets individuels*** dans la section : ***Option de sortie*** :

![Image : Décocher pour activer la tour de purge](./images/134.png)

#### *[Position de la tour de purge X & Y](../variable/wipe_tower_x.md)*

Coordonnées [X](../variable/wipe_tower_x.md) et [Y](../variable/wipe_tower_y.md) du coin avant gauche d'une tour de purge.

#### *[Largeur du bord de la tour de purge](../variable/wipe_tower_brim.md)*

Peut être exprimée en mm ou en % du (supposée) diamètre de buse.

#### *[Largeur](../variable/wipe_tower_width.md)*

Largeur d'une tour de purge. La longueur sera elle fonction du volume de purge à utiliser.

#### *[Angle de rotation de la tour de purge](../variable/wipe_tower_rotation_angle.md)*

Angle de rotation de la tour de purge par rapport à l'axe X.

Il est à noter qu’il est aussi très facile de repositionner et orienter la tour de purge depuis l’interface graphique. 

#### *[Distance maximale de pont](../variable/wipe_tower_bridging.md)*

Distance maximale entre les supports sur les sections de remplissage épars.

Dans le cas où les couches de la tour de purge ne sont là que pour maintenir le niveau d’impression, les couches de la tour ne sont pas pleines et un cadrillage permet simplement de garantir une stabilité et un support pour les futurs couches pleines. Dans ce cas le distance entre le quadrillage et piloté par ce paramètre appelé ***Distance maximale de pont.***

#### *[Sans couches dispersées (EXPERIMENTAL)](../variable/wipe_tower_no_sparse_layers.md)*

Si elle est activée, la tour de purge ne sera pas imprimée sur des couches sans changement de filament. Sur les couches avec un changement de filament, l'extrudeur se déplacera vers le bas pour imprimer la tour de purge. C'est à l'utilisateur de s'assurer qu'il n'y a pas de collision avec l'impression.

#### *[Préparer toutes les extrudeuses d’impression](../variable/single_extruder_multi_material_priming.md)*

Si l'option est activé, tous les extrudeurs qui impriment seront amorcés sur l’avant du plateau d’impression au début de l'impression.

![Image : Préparation des extrudeuses activée](./images/136.png)

![Image : Options Tour de purge](./images/137.png)

### Avancé

![Image : Option Avancé](./images/138.png)

#### *[Création d’interface entre coques](../variable/interface_shells.md)*

Force la génération de coques pleines entre des volumes/matériaux adjacents. Utile pour des impressions multi-extrudeurs avec des matériaux translucides ou avec un support manuel soluble.

![Image : l’option n’est pas activée](./images/139.jpeg) ![Image :  option coque d’interface activée](./images/140.jpeg)

A gauche l’option n’est pas activée / A droite option coque d’interface activée.

## Options de sortie

### Plateau

#### *[Distance entre les objets](../variable/duplicate_distance.md)*

Distance utilisée par la fonction d'agencement automatique du plateau. Pour définir la distance à respecter entre les objets placés sur le plateau d’impression.

### Impression séquentielle

Lorsque vous imprimez plusieurs objets à la fois, vous pouvez choisir de les réaliser séquentiellement, un par un. Cela peut minimiser les coulures et la création de fils se créant entre les impressions. Cela peut également éviter de perdre plusieurs impressions semi-achevées si l'un des objets se détache du plateau d'impression.

Vous pouvez activer cette fonction en activant **Réglages d'impression - Options de sortie - [Compléter les objets individuels](../variable/complete_objects.md)**.

![Image : Impression séquentielle](./images/141.png)

Appuyez sur la touche  **E**  pour voir l'**ordre des objets** dans la vue 3D.

Vous pouvez modifier l'ordre en faisant un **glisser-déposer** des objets dans la **Liste des objets**. L'objet le plus haut dans la liste d'objets sera imprimé en premier, le dernier en bas.

Vous devrez **surveiller régulièrement l'imprimante,** avec chaque objet, il est possible que la pièce spécifique ne colle pas au plateau d'impression.

Avec l'impression séquentielle, il existe un **risque de collisions** entre la tête d'impression et l'une des impressions achevées ou entre l'axe X et l'une des impressions achevées.

SuperSlicer essaiera de vous avertir de tels cas, mais même si vous ne recevez aucun avertissement, vous devriez essayer d'éviter autant que possible les collisions éventuelles.

- 
#### *[N’autoriser qu’une seule boucle de jupe](../variable/complete_objects_one_skirt.md)*

Lorsque vous utilisez ***'Compléter les objets individuels'***, le comportement par défaut est de dessiner la jupe autour de chaque objet. Si vous préférez n'avoir qu'une seule jupe pour l’impression entière, utilisez cette option.

#### *[Imprimer toutes les bordures au démarrage](../variable/complete_objects_one_brim.md)*

Lorsque vous utilisez ***'Compléter les objets individuels'***,   le comportement par défaut est de dessiner la bordure au début de chaque objet. Si vous préférez avoir plus de place pour vos objets, vous pouvez imprimer toutes les bordures au début, ainsi il y a moins de problème de collision.

#### *[Tri des objets](../variable/complete_objects_sort.md)*

Lorsque vous imprimez plusieurs objets ou copies les uns après les autres, cela vous aidera à choisir l'ordre dans lequel ils seront imprimés.

- **Panneau de droite** les triera selon l'ordre des objets indiqué dans le panneau à droite de l'écran.
- **Le plus bas Y** les triera en fonction de leur point Y le plus bas. Utile pour les imprimantes avec une barre X.
- **Le plus bas Z** les triera par leur hauteur, utile pour les imprimantes delta.

Pour aider SuperSlicer à détecter les collisions, spécifiez les paramètres **Dégagement de l'extrudeuse :**

#### *[Rayon](../variable/extruder_clearance_radius.md)*

Le rayon de dégagement cylindrique autour de l'extrudeuse.

#### *[Hauteur](../variable/extruder_clearance_height.md)*

La distance verticale entre la pointe de la buse et les tiges de l'axe X (ou la pièce la plus basse qui peut interférer avec une impression finie).

SuperSlicer veut **que tous les objets doivent être inférieurs à la hauteur de dégagement de l'extrudeur, sauf le dernier objet**, qui peut être aussi grand que le Z max de l'imprimante.

### Fichier de sortie

![Image : Options fichier de sortie](./images/142.png)

#### *[G-code commenté](../variable/gcode_comments.md)*

Activez ceci pour obtenir un fichier G-code commenté, avec chaque ligne expliquée par un texte descriptif. Si vous imprimez depuis une carte SD, le poids supplémentaire du fichier pourrait ralentir le firmware de votre imprimante.

#### *[Marquer les objets](../variable/gcode_label_objects.md)*

Activez cette option pour ajouter des commentaires dans le G-code afin d'identifier les mouvements d'impression avec l'objet concerné. Cela est utile pour le plugin Octoprint CancelObject. Ce paramètre n'est **PAS** compatible avec la configuration mono-extrudeur multi-matériaux ni avec la configuration ***Purger dans l'objet*** ou ***Purger dans le remplissage***.

#### *[Format du nom de fichier de sortie](../variable/output_filename_format.md)*

Vous pouvez utiliser toutes les options de configuration comme variables dans ce modèle. Par exemple : [layer_height], [fill_density] etc. Vous pouvez aussi utiliser [timestamp], [year], [month], [day], [hour], [minute], [second], [version], [input_filename], [input_filename_base].

### Fraisage de post-traitement

![Image : Options de fraisage de post-traitement](./images/143.png)

#### *[Post_traitement par fraisage](../variable/milling_post_process.md)*

Si cette option est activée, à la fin de chaque couche, l'imprimante utilisera une tête de fraisage pour fraiser les périmètres externes.

Vous devez définir la ***Taille XY supplémentaire de fraisage*** sur une valeur suffisamment élevée pour avoir suffisamment de plastique à fraiser. Assurez-vous également que votre pièce est fermement collée sur le plateau.

#### *[Taille XY supplémentaire de fraisage](../variable/milling_extra_size.md)*

Cela augmente la taille de l'objet d'une certaine quantité pour avoir assez de plastique à fraiser. Vous pouvez définir un nombre de mm ou un pourcentage de la largeur supplémentaire optimale calculée (à partir du calcul du flux).

#### *[Fraisage seulement après](../variable/milling_after_z.md)*

Ce paramètre limite le fraisage post-processus à une certaine hauteur, pour éviter de fraiser le plateau. 
Cela peut être exprimé en mm ou un % de la hauteur de la première couche (cela peut donc dépendre de l'objet).

#### *[Vitesse de fraisage](../variable/milling_speed.md)*

Vitesse de l’outil de fraisage.


### *Substitution de G-Code*

Ensemble de fonctions permettant de rechercher dans le Gcode une chaine de caratère et de la remplacer par une autre.

![Image : Substitution de G-Code](./images/150.png)

Il est possible avec le bouton **Ajouter** de rajouter autant de substitutions que désirés.

Le G-Code est traité avant d'être prévisualisé, de sorte que vos modifications seront visibles dans l'aperçu du G-Code. Il peut être utile d'activer 'G-code commenté' pour que SuperSlicer génère des annotations supplémentaires, que vous pouvez ensuite faire correspondre avec une autre recherche

#### Syntaxe des expressions régulières

La syntaxe des expressions régulières de Perl est prise en charge comme décrit dans[booster la syntaxe des expressions régulières Perl](https://www.boost.org/doc/libs/1_78_0/libs/regex/doc/html/boost_regex/syntax/perl_syntax.html), où un modificateur "sur une seule ligne" imite le modificateur **s/** de Perl. Lorsque les expressions régulières sont actives, l'expression "Remplacer par" prend en charge la syntaxe "étendue" comme décrit dans[booster la syntaxe du format étendu](https://www.boost.org/doc/libs/1_78_0/libs/regex/doc/html/boost_regex/format/boost_format_syntax.html). [Les lookahead et lookbehind](https://www.w3docs.com/learn-javascript/lookahead-and-lookbehind.html)sont pris en charge par le moteur d'expressions régulières, mais uniquement pour les expressions de longueur fixe. Avec les expressions régulières désactivées, **n, r, t**, et les variables sont pris en charge dans les expressions "Rechercher" et "Remplacer par" de la même manière que la syntaxe "étendue" de Notepad++.

Le post-processeur de recherche/remplacement de G-code traite le G-code en blocs, où un seul bloc de G-code est généré pour chaque couche en commençant par le Z jusqu'à passer à la couche suivante. Plusieurs expressions de recherche/remplacement sont appliquées une par une à un bloc de G-code avant de traiter le bloc de G-code suivant. La correspondance de motifs multilignes est possible, mais uniquement à l'intérieur d'un bloc de G-code, très probablement à l'intérieur d'une seule couche. Les expressions régulières sont puissantes mais délicates, nous recommandons donc l'[espace de test en ligne regular expressions 101](https://regex101.com/)pour se familiariser avec les expressions régulières et pour tester et affiner les expressions régulières modifiant le G-code avant de les saisir dans SuperSlicer.

#### Exemple

Un exemple d'une modification de G-code assez puissante par une expression régulière raisonnablement complexe : augmenter le taux d'extrusion du remplissage solide supérieur de la valeur par défaut de 95 % à 98 %.  
Rechercher :

    (;TYPE:Top solid infilln)(.*?)(;TYPE:|$)(?!Top solid infill)

  
Remplacer par :

        ${1}M221 S98n${2}M221 S95n${3}


### *[Scripts de post-traitement](../variable/post_process.md)*

Si vous voulez traiter le G-code de sortie à l'aide de scripts personnalisés, listez simplement leurs chemins absolus ici. Séparez les divers scripts avec un point-virgule. Les scripts vont recevoir en premier argument le chemin absolu du fichier G-code, et ils peuvent accéder aux réglages de configuration de SuperSlicer en lisant des variables d'environnement.

### Exemple de Post-traitement SuperSlicer G-Code

Ces notes sont basées sur mes expériences avec les imprimantes Ender 3 de Creality. Si vous utilisez une autre imprimante, veuillez vérifier que les détails du fonctionnement sont similaires.

Il y a certaines choses que SuperSlicer ne fait tout simplement pas. La possibilité de modifier automatiquement le G-code est fournie par des scripts de post-traitement. Les scripts peuvent être écrits dans différents langages, mais vous êtes responsable de l'installation et de la configuration du langage de programmation et des fichiers de support sur votre système.

Dans cette exemple le code M73 généré par SuperSlicer pour indiquer le temps d’impression restant, sera changé en mode **M117** pour un affichage sur l’écran LCD d’une imprimante Creality.

![Image : Temps d’impression restant](./images/144.png) 

Nous allons retrouver ci-après le listing d’un script de 32 lignes de post-traitement pour changer le code M73 d’impression du temps restant en M117 pour machine Creality.

Il est à noter que ces scripts doivent traiter la récupération du nom du fichier G-Code généré, passé en premier argument par SuperSlicer :

	sourceFile=sys.argv[1]

	1	#!/usr/bin/python
	2	import sys
	3	import re
	4	import os
	5	import os.path
	6	from os import path
	7		
	8	sourceFile=sys.argv[1] 
	9
	10	# Read the ENTIRE g-code file into memory 
	11	with open(sourceFile, "r") as f: 
	12		lines = f.readlines() 
	13
	14	destFile = re.sub('\.gcode$','',sourceFile) 
	15	tempFile = destFile+".bak" 
	16	if path.exists(tempFile): 
	17		os.remove(tempFile) 
	18	os.rename(sourceFile,destFile+".bak") 
	19	destFile = re.sub('\.gcode$','',sourceFile) 
	20	destFile = destFile + '.gcode'
	21
	22	with open(destFile, "w") as of: 
	23		for lIndex in range(len(lines)): 
	24			oline = lines[lIndex] 
	25			if oline[:3] == "M73": 
	26				tempLine = oline.replace(" R", " min ") 
	27				tempLine = tempLine.replace("M73 P", "M117 %") 
	28				of.write(tempLine) 
	29			else: 
	30				of.write(oline) 
	31	of.close()
	32	f.close()


Précisez le chemin d'accès au script dans la partie **[Scripts de post-traitement](post_process.md)**

![Image : Préciser le chemin du script de post-traitement](./images/145.png)

_**Attention dans le cas de script Python, il est nécessaire d’indiquer le chemin complet à la console Python**_. 

Pour les scripts Python, l’interpréteur Python peut être téléchargé à l’adresse suivante : <https://www.python.org/downloads/> .

## [Remarques](../variable/notes.md)

Vous pouvez inscrire ici vos commentaires personnels. Ce texte sera ajouté aux commentaires en entête du G-Code.



## Dépendances


**Section à compléter.**

![Image : Dépendances du profil](./images/146.png)



Page suivante [Réglages du filament](../filament_settings/filament_settings.md)

[Retour Page principale](../superslicer.md)
