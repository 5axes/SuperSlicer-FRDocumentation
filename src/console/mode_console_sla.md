# Lancement de SuperSlicer en mode Console pour les impressions SLA

## Commande 

Usage: superslicer [ ACTIONS ] [ TRANSFORM ] [ OPTIONS ] [ file.stl ... ]

### Actions:
     --export-3mf        Exportez le(s) modèle(s) au format 3MF.
     --export-amf        Exportez le(s) modèle(s) en tant qu'AMF.
     --export-gcode, --gcode, -g Découpez le modèle et exportez les parcours d'outils en code G.
     --export-obj        Exportez le(s) modèle(s) au format OBJ.
     --export-sla, --sla Découpez le modèle et exportez les couches d'impression SLA au format PNG.
     --export-stl        Exportez le(s) modèle(s) au format STL.
     --gcodeviewer       Visualiser un code G déjà découpé et enregistré
     --help, -h          Montrer cette aide.
     --help-fff          Afficher la liste complète des options de configuration de l'impression/du code G.
     --help-sla          Afficher la liste complète des options de configuration de l'impression SLA.
     --info              Écrire des informations sur le modèle dans la console.
     --save ABCD         Sauvegarder la configuration dans le fichier spécifié.
     --slice, -s         Découpez le modèle en FFF ou SLA en fonction de la valeur de configuration printer_technology.

### Options de transformation:
     --align-xy X,Y      Alignez le modèle sur le point donné.
     --center X,Y        Centre l'impression autour du centre donné.
     --cut N             Coupez le modèle au Z donné.
     --dont-arrange      Ne réorganisez pas les modèles donnés avant de les fusionner et conservez leurs coordonnées XY originales.
     --duplicate N       Multipliez les copies par ce facteur.
     --duplicate-grid X,Y        Multipliez les copies en créant une grille.
     --merge, -m         Disposez les modèles fournis dans une plaque et fusionnez-les en un seul modèle afin d'effectuer les actions une seule fois.
     --repair            Essayer de réparer les mailles non-manifold (cette option est implicitement ajoutée lorsque nous devons découper le modèle pour effectuer l'action demandée).
     --rotate N           Angle de rotation autour de l'axe Z en degrés.
     --rotate-x N        Angle de rotation autour de l'axe X en degrés.
     --rotate-y N        Angle de rotation autour de l'axe Y en degrés.
     --scale N             Facteur d'échelle ou pourcentage.
     --scale-to-fit X,Y,Z        Mise à l'échelle pour s'adapter au volume donné.
     --split             Détecter les parties non connectées dans le(s) modèle(s) donné(s) et les diviser en objets distincts.

### Autres options:
     --config-compatibility   Cette version de SuperSlicer peut ne pas comprendre les configurations produites par les versions les plus récentes de SuperSlicer. Par exemple, une version plus récente de SuperSlicer peut étendre la liste des saveurs de firmware supportées. On peut décider d'abandonner ou de remplacer une valeur inconnue par une valeur par défaut de manière silencieuse ou verbeuse. (disable, enable, enable_silent ; par défaut : enable)
     --datadir ABCD      Charge et stocke les configurations dans le répertoire donné. Ceci est utile pour maintenir différents profils ou inclure des configurations à partir d'un stockage réseau.
     --ignore-nonexistent-config Ne pas échouer si un fichier fourni avec **--load** n'existe pas.
     --load ABCD         Charge la configuration à partir du fichier spécifié. Elle peut être utilisée plus d'une fois pour charger des options à partir de plusieurs fichiers.
     --loglevel N        Définit le niveau d'information de la création d'un journal. 0:fatal, 1:error, 2:warning, 3:info, 4:debug, 5:trace Par exemple, loglevel=2 enregistre les messages de niveau fatal, erreur et warning.
     --output ABCD, -o ABCD Le fichier où la sortie sera écrite (si non spécifié, elle sera basée sur le fichier d'entrée).
     --single-instance   Si cette option est activée, les arguments de la ligne de commande sont envoyés à une instance existante de l'interface graphique SuperSlicer, ou une fenêtre SuperSlicer existante est activée. Remplace la valeur de configuration "single_instance" des préférences de l'application.
     --sw-renderer       Effectuer un rendu avec un logiciel de rendu. Le logiciel de rendu de MESA est chargé à la place du pilote OpenGL par défaut.

Les options d'impression sont traitées dans l'ordre suivant :
	1) Configuration des clés à partir de la ligne de commande, par exemple --fill-pattern=stars (priorité la plus élevée, écrase tout ce qui est en dessous)
	2) Fichiers de configuration chargés avec --load
	3) Valeurs de configuration chargées à partir de fichiers amf ou 3mf

Exécuter --help-fff / --help-sla pour voir la liste complète des options d'impressions.

### Options diverses:
     --absolute-correction N
                     Will inflate or deflate the sliced 2D polygons according to the sign of the
                     correction. (default: 0)
     --area-fill N       The percentage of the bed area. If the print area exceeds the specified value,
                     then a slow tilt will be used, otherwise - a fast tilt (%, default: 50)
     --bottle-cost N     Cost (money/bottle, default: 0)
     --bottle-volume N   Bottle volume (ml, default: 1000)
     --bottle-weight N   Bottle weight (kg, default: 1)
     --display-height N  Height of the display (default: 68)
     --display-mirror-x  Enable horizontal mirroring of output images
     --display-mirror-y  Enable vertical mirroring of output images
     --display-orientation
                     Set the actual LCD display orientation inside the SLA printer. Portrait mode
                     will flip the meaning of display width and height parameters and the output
                     images will be rotated by 90 degrees. (landscape, portrait; default: portrait)
     --display-pixels-x N
                     Number of pixels in X (default: 2560)
     --display-pixels-y N
                     Number of pixels in Y (default: 1440)
     --display-width N   Width of the display (default: 120)
     --exposure-time N   Exposure time (s, default: 10)
     --faded-layers N    Number of the layers needed for the exposure time fade from initial exposure
                     time to the exposure time (default: 10)
     --fast-tilt-time N  Time of the fast tilt (s, default: 5)
     --gamma-correction N
                     This will apply a gamma correction to the rasterized 2D polygons. A gamma value
                     of zero means thresholding with the threshold in the middle. This behaviour
                     eliminates antialiasing without losing holes in polygons. (default: 1)
     --initial-exposure-time N
                     Initial exposure time (s, default: 15)
     --initial-layer-height N
                     Initial layer height (mm, default: 0.3)
     --material-correction N
                     Correction for expansion (default: 1,1)
     --material-density N
                     Density (g/ml, default: 1)
     --material-notes ABCD
                     You can put your notes regarding the SLA print material here.
     --material-type ABCD
                     SLA material type (Tough, Flexible, Casting, Dental, Heat-resistant; default:
                     Tough)
     --max-exposure-time N
                     Maximum exposure time (s, default: 100)
     --max-initial-exposure-time N
                     Maximum initial exposure time (s, default: 150)
     --min-exposure-time N
                     Minimum exposure time (s, default: 0)
     --min-initial-exposure-time N
                     Minimum initial exposure time (s, default: 0)
     --output-format     Select the output format for this printer. (mCWS, SL1; default: mCWS)
     --relative-correction N
                     Printer scaling correction (default: 1,1)
     --slow-tilt-time N  Time of the slow tilt (s, default: 8)
     --support-max-bridges-on-pillar N
                     Maximum number of bridges that can be placed on a pillar. Bridges hold support
                     point pinheads and connect to pillars as small branches. (default: 3)
     --support-pillar-connection-mode
                     Controls the bridge type between two neighboring pillars. Can be zig-zag, cross
                     (double zig-zag) or dynamic which will automatically switch between the first
                     two depending on the distance of the two pillars. (zigzag, cross, dynamic;
                     default: dynamic)
#### Découpage :
     --elephant-foot-min-width N
                     Minimum width of features to maintain when doing the first layer compensation.
                     (mm, default: 0.2)
#### Matériel de soutien :
     --support-base-diameter N
                     Diameter in mm of the pillar base (mm, default: 4)
     --support-base-height N
                     The height of the pillar base cone (mm, default: 1)
     --support-base-safety-distance N
                     The minimum distance of the pillar base from the model in mm. Makes sense in
                     zero elevation mode where a gap according to this parameter is inserted between
                     the model and the pad. (mm, default: 1)
     --support-buildplate-only
                     Only create support if it lies on a build plate. Don't create support on a
                     print.
     --support-critical-angle N
                     The default angle for connecting support sticks and junctions. (°, default: 45)
     --support-head-front-diameter N
                     Diameter of the pointing side of the head (mm, default: 0.4)
     --support-head-penetration N
                     How much the pinhead has to penetrate the model surface (mm, default: 0.2)
     --support-head-width N
                     Width from the back sphere center to the front sphere center (mm, default: 1)
     --support-max-bridge-length N
                     The max length of a bridge (mm, default: 15)
     --support-max-pillar-link-distance N
                     The max distance of two pillars to get linked with each other. A zero value will
                     prohibit pillar cascading. (mm, default: 10)
     --support-object-elevation N
                     How much the supports should lift up the supported object. If this value is
                     zero, the bottom of the model geometry will be considered as part of the pad.If
                     "Pad around object" is enabled, this value is ignored. (mm, default: 5)
     --support-pillar-diameter N
                     Diameter in mm of the support pillars (mm, default: 1)
     --support-pillar-widening-factor N
                     Merging bridges or pillars into other pillars can increase the radius. Zero
                     means no increase, one means full increase. (default: 0)
     --support-points-density-relative N
                     This is a relative measure of support points density. (%, default: 100)
     --support-points-minimal-distance N
                     No support points will be placed closer than this threshold. (mm, default: 1)
     --support-small-pillar-diameter-percent
                     The percentage of smaller pillars compared to the normal pillar diameter which
                     are used in problematic areas where a normal pilla cannot fit. (%, default: 50%)
     --supports-enable   Generate supports for the models
#### Pad:
     --pad-around-object Create pad around object and ignore the support elevation
     --pad-around-object-everywhere
                     Force pad around object everywhere
     --pad-brim-size N   How far should the pad extend around the contained geometry (mm, default: 1.6)
     --pad-enable        Add a pad underneath the supported model
     --pad-max-merge-distance N
                     Some objects can get along with a few smaller pads instead of a single big one.
                     This parameter defines how far the center of two smaller pads should be. If
                     theyare closer, they will get merged into one pad. (mm, default: 50)
     --pad-object-connector-penetration N
                     How much should the tiny connectors penetrate into the model body. (mm, default:
                     0.3)
     --pad-object-connector-stride N
                     Distance between two connector sticks which connect the object and the generated
                     pad. (mm, default: 10)
     --pad-object-connector-width N
                     Width of the connector sticks which connect the object and the generated pad.
                     (mm, default: 0.5)
     --pad-object-gap N  The gap between the object bottom and the generated pad in zero elevation mode.
                     (mm, default: 1)
     --pad-wall-height N Defines the pad cavity depth. Set to zero to disable the cavity. Be careful when
                     enabling this feature, as some resins may produce an extreme suction effect
                     inside the cavity, which makes peeling the print off the vat foil difficult.
                     (mm, default: 0)
     --pad-wall-slope N  The slope of the pad wall relative to the bed plane. 90 degrees means straight
                     walls. (°, default: 90)
     --pad-wall-thickness N
                     The thickness of the pad and its optional cavity walls. (mm, default: 2)
#### Evidement:
     --hollowing-closing-distance N
                     Hollowing is done in two steps: first, an imaginary interior is calculated
                     deeper (offset plus the closing distance) in the object and then it's inflated
                     back to the specified offset. A greater closing distance makes the interior more
                     rounded. At zero, the interior will resemble the exterior the most. (mm,
                     default: 2)
     --hollowing-enable  Hollow out a model to have an empty interior
     --hollowing-min-thickness N
                     Minimum wall thickness of a hollowed model. (mm, default: 3)
     --hollowing-quality N
                     Performance vs accuracy of calculation. Lower values may produce unwanted
                     artifacts. (default: 0.5)


Page suivante [Correction d'un modèle non valide](../tutorial/repairing-models.md) 

[Retour Page principale](../superslicer.md)