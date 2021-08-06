# Calibration de la Première Couche

La Calibration de la première couche est utilisée pour calibrer la distance entre la pointe de la buse et la surface d'impression. Le but est d'ajuster la hauteur de la buse jusqu'à ce que le plastique extrudé adhère correctement au plateau et que vous puissiez voir qu'il est légèrement écrasé.

Les imprimantes assemblées dans l'usine de Prusa sont déjà réglées finement et cette calibration n'est nécessaire que si vous avez assemblé la version en kit chez vous ou changé la buse. La Calibration de la première couche fait partie de l'Assistant (dernière étape de la calibration XYZ). Vous pouvez aussi recalibrer la première couche à tout moment depuis_Menu LCD - Calibration - Cal. première couche_. Au cours de ce processus, tournez le bouton pour ajuster manuellement la distance entre la buse et le plateau, pendant que l'imprimante imprime un motif en zig-zag.

Comme **chaque type de feuille (lisse, satinée et texturée) a une épaisseur différente** vous devez utiliser une calibration de la première couche différente pour chacun d'eux. Pour cela, nous avons une fonctionnalité pratique appelée [Profils de feuille d'acier](https://help.prusa3d.com/fr/article/profils-de-feuille-dacier_1955).

Avec une imprimante nouvellement assemblée, vous commencerez à zéro et passerez à une valeur négative (-), réduisant ainsi la distance entre la buse et le plateau chauffant. La valeur zéro initiale est définie par la position de la P.I.N.D.A./M.I.N.D.A..**Tournez le bouton dans le sens antihoraire pour rapprocher la buse du plateau et éloigner la valeur de zéro.** La valeur est unique à chaque imprimante et peut également changer légèrement avec le temps et l'utilisation. Vous devez donc **vérifier visuellement lors du réglage de la hauteur, pas par une valeur définie.**

![](https://cdn.help.prusa3d.com/wp-content/uploads/first_layer-768x433-1.jpg)

Une calibration de la première couche mal réglée peut entraîner divers problèmes. Avec la buse trop éloignée de la surface d'impression, vous risquez que votre impression ne colle pas correctement, ce qui peut entraîner un [blob](https://help.prusa3d.com/fr/article/blob-sur-lextrudeur_2005). D'un autre côté, si elle est réglée trop près, vous pouvez rencontrer des problèmes d'extrusion et de[bouchage](https://help.prusa3d.com/fr/article/buse-hotend-bouchee-mk3s-mk2-5s_2008)et une mauvaise qualité d'impression,**ou même des dommages au matériel, comme la [feuille d'acier flexible](https://help.prusa3d.com/fr/article/feuilles-dacier-flexible-guide_2195) en raison d'une impression trop collante.** Il est donc **important de bien faire cela.**

![](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-01.jpg)

Avant de continuer, assurez-vous que la surface d'impression (feuille d'acier satinée, lisse ou texturée) est propre. Vous pouvez trouver des informations sur la façon de la nettoyer dans la [Préparation de la surface d'impression en PEI](https://help.prusa3d.com/fr/article/problemes-de-premiere-couche_1804). Il y a quelques petites différences entre l'apparence sur la feuille d'acier texturée et la lisse. Nous présenterons donc des photos et des conseils pour les deux, en commençant par la feuille lisse.

**Tournez le bouton dans le sens antihoraire pour rapprocher la buse du plateau.**

### Feuille lisse

#### Trop haute

Vous voulez que la ligne soit aplatie, mais pas écrasée. Sur le carré à la fin de la ligne de test, vous ne voulez pas d'**écarts entre les lignes (image de gauche), ce qui signifie qu'elle est trop haute.**Dans ce cas, la valeur sera trop proche de zéro.

#### Trop basse

Si la buse est réglée trop bas (image de droite) vous verrez la ligne écrasée complètement à plat et le carré de fin aura**des crêtes entre les lignes, ce qui est un signe clair qu'elle est réglée trop basse**et la valeur sera trop éloignée de zéro. Lorsqu'elle est trop basse, les bords du carré peuvent également commencer à se courber vers le haut. À l'extrême, le filament sera étalé si finement que vous pourrez voir à travers le filament imprimé, conduisant au bouchage de votre hotend.

#### Bien réglée

Un ajustement correct vous donnera une surface plane (image centrale), sans espaces entre les lignes, ni crêtes. Comme indiqué, la valeur numérique dépend de la position exacte de la sonde P.I.N.D.A., qui sera unique à chaque machine et ne signifie rien sans une référence visuelle.**Cependant, une plage classique va de -0,400 à -1,500.**

![](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-02.jpg)

Un ajustement plus rapproché peut dans certains cas améliorer l'adhérence. Cependant, si vous rencontrez des problèmes d'adhérence, mais que la calibration de votre première couche ressemble à la 'bonne' image (image centrale), votre problème se situe ailleurs, comme une feuille sale/grasse, les paramètres d'impression, le nivellement du lit/la calibration XYZ ou une sous-extrusion.

![](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-03fix-2.jpg)

**Vous ne pouvez pas la même calibration de la première couche si vous échangez entre la feuille Lisse et la feuille texturée !**Pour plus d'informations, veuillez consulter[Profils de feuille d'acier](https://help.prusa3d.com/fr/article/profils-de-feuille-dacier_1955).

### Feuille texturée

Les feuilles texturées sont plus minces que les feuilles à PEI lisse, vous devez donc rapprocher un peu plus la buse, mais vous recherchez les mêmes résultats qu'avec la feuille lisse. Encore une fois, si**elle est réglée trop bas (image de droite) le filament peut commencer à se recourber**sur les bords comme s'il n'adhère pas. La valeur numérique sera trop éloignée de zéro et doit être réajustée.

Si elle est réglée trop haut, vous verrez que la ligne est ronde et qu'il y a des espaces entre les lignes du carré de fin. Dans ce cas, la valeur est trop proche de zéro.

![](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-04.jpg)
![](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-04.jpg)

### Jetez un œil à la buse

Une seule couche mesure environ 0,2 mm / 0,00787402 pouce. Il peut également être utile de regarder la buse et sa distance par rapport à la feuille. Cependant, mesurer la couche imprimée avec des pieds à coulisse n'est pas une méthode recommandée pour calibrer la première couche.

![First-Layer-Calibration](https://cdn.help.prusa3d.com/wp-content/uploads/First-Layer-Calibration-05.jpg)

### Quand exécuter la Calibration de la première couche

Généralement, la**calibration de la première couche**doit être effectuée chaque fois qu'il y a**changement majeur dans l'assemblage.**Cela inclut le changement de la buse, les mises à niveau de l'extrudeur ou d'autres mises à jour de n'importe quel axe. Vous devriez également exécuter toutes les calibrations si vous déplacez l'imprimante vers un emplacement différent.

Pour les calibrations de la première couche avec d'autres diamètres de buse que 0,4 mm, veuillez consulter [cet article](https://help.prusa3d.com/fr/article/differents-types-de-buse_2193#first-layer-calibration-of-other-nozzles)

### Autres problèmes

* Si la largeur de la ligne varie sur sa longueur, vous devrez peut-être faire quelques [Correction du nivellement du Bed Level](https://help.prusa3d.com/fr/article/correction-du-nivellement-du-bed-level_2267).
* Si la buse entre en contact avec le plateau, la sonde P.I.N.D.A./M.I.N.D.A. n'est pas déclenchée par la feuille d'acier flexible et doit être déplacée physiquement plus bas dans son support. Cela la rapprochera du niveau de la pointe de la buse. Vous devez vous assurer qu'elle est ajustée comme indiqué dans le [Contrôle avant lancement](https://help.prusa3d.com/fr/guide/9-controle-avant-lancement_76792) du manuel d'assemblage.**Si vous déplacez la sonde P.I.N.D.A.,vous devez refaire la calibration de la première couche.**