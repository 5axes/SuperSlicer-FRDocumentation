# Lancement de SuperSlicer en mode Console pour les impressions FDM

Version : SuperSlicer_2.3.57.5 based on Slic3r (with GUI support) https://github.com/supermerill/SuperSlicer

## Commande 

Usage : superslicer [ ACTIONS ] [ TRANSFORM ] [ OPTIONS ] [ file.stl ... ]

### Actions
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

### Options de transformation
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

### Autres options
     --config-compatibility   Cette version de SuperSlicer peut ne pas comprendre les configurations produites par les versions les plus récentes de SuperSlicer. Par exemple, une version plus récente de SuperSlicer peut étendre la liste des saveurs de firmware supportées. On peut décider d'abandonner ou de remplacer une valeur inconnue par une valeur par défaut de manière silencieuse ou verbeuse. (disable, enable, enable_silent ; par défaut : enable)
     --datadir ABCD      Charge et stocke les configurations dans le répertoire donné. Ceci est utile pour maintenir différents profils ou inclure des configurations à partir d'un stockage réseau.
     --ignore-nonexistent-config Ne pas échouer si un fichier fourni avec **--load** n'existe pas.
     --load ABCD         Charge la configuration à partir du fichier spécifié. Elle peut être utilisée plus d'une fois pour charger des options à partir de plusieurs fichiers.
     --loglevel N        Définit le niveau d'information de la création d'un journal. 0:fatal, 1:error, 2:warning, 3:info, 4:debug, 5:trace Par exemple, loglevel=2 enregistre les messages de niveau fatal, erreur et warning.
     --output ABCD, -o ABCD Le fichier où la sortie sera écrite (si non spécifié, elle sera basée sur le fichier d'entrée).
     --single-instance   Si cette option est activée, les arguments de la ligne de commande sont envoyés à une instance existante de l'interface graphique SuperSlicer, ou une fenêtre SuperSlicer existante est activée. Remplace la valeur de configuration "single_instance" des préférences de l'application.
     --sw-renderer       Effectuer un rendu avec un logiciel de rendu. Le logiciel de rendu de MESA est chargé à la place du pilote OpenGL par défaut.

Les options d'impression sont traitées dans l'ordre suivant :
	1) Configuration des paramètres à partir de la ligne de commande, par exemple --fill-pattern=stars (priorité la plus élevée, écrase tout ce qui est en dessous)
	2) Fichiers de configuration chargés avec --load
	3) Valeurs de configuration chargées à partir de fichiers amf ou 3mf

Exécutez **--help-fff / --help-sla** pour voir la liste complète des options d'impressions.

### Options diverses

     --color-change-gcode ABCD
                     This G-code will be used as a code for the color change (default: M600)
     --draft-shield      If enabled, the skirt will be as tall as a highest printed object. This is
                     useful to protect an ABS or ASA print from warping and detaching from print bed
                     due to wind draft.
     --external-perimeter-fan-speed N
                     When set to a non-zero value this fan speed is used only for external perimeters
                     (visible ones). Set to 1 to disable the fan. Set to -1 to use the normal fan
                     speed on external perimeters.External perimeters can benefit from higher fan
                     speed to improve surface finish, while internal perimeters, infill, etc. benefit
                     from lower fan speed to improve layer adhesion. (%, default: -1)
     --extra-loading-move N
                     When set to zero, the distance the filament is moved from parking position
                     during load is exactly the same as it was moved back during unload. When
                     positive, it is loaded further, if negative, the loading move is shorter than
                     unloading. (mm, default: -2)
     --filament-cooling-final-speed N
                     Cooling moves are gradually accelerated towards this speed. (mm/s, default: 3.4)
     --filament-cooling-initial-speed N
                     Cooling moves are gradually accelerated, starting at this speed. (mm/s, default:
                     2.2)
     --filament-cooling-moves N
                     Filament is cooled by being moved back and forth in the cooling tubes. Specify
                     desired number of these moves. (default: 4)
     --filament-cooling-zone-pause N
                     Can be useful to avoid bondtech gears deforming hot tips, but not ordinarily
                     needed (milliseconds, default: 0)
     --filament-deretract-speed N
                     The speed for loading of a filament into extruder after retraction (this only
                     applies to the extruder motor). If left as zero, the retraction speed is used.
                     (mm/s, default: 0)
     --filament-diameter N
                     Enter your filament diameter here. Good precision is required, so use a caliper
                     and do multiple measurements along the filament, then compute the average. (mm,
                     default: 1.75)
     --filament-dip-extraction-speed N
                     usually not necessary to change this (mm/sec, default: 70)
     --filament-dip-insertion-speed N
                     usually not necessary to change this (mm/sec, default: 33)
     --filament-enable-toolchange-part-fan
                     Experimental setting. May enable the hotend to cool down faster during
                     toolchanges (default: 0)
     --filament-enable-toolchange-temp
                     Determines whether toolchange temperatures will be applied (default: 0)
     --filament-load-time N
                     Time for the printer firmware (or the Multi Material Unit 2.0) to load a new
                     filament during a tool change (when executing the T code). This time is added to
                     the total print time by the G-code time estimator. (s, default: 0)
     --filament-loading-speed N
                     Speed used for loading the filament on the wipe tower. (mm/s, default: 28)
     --filament-loading-speed-start N
                     Speed used at the very beginning of loading phase. (mm/s, default: 3)
     --filament-max-overlap
                     This setting will ensure that all 'overlap' are not higher than this value. This
                     is useful for filaments that are too viscous, as the line can't flow under the
                     previous one. (%, default: 100%)
     --filament-max-wipe-tower-speed N
                     This setting is used to set the maximum speed when extruding inside the wipe
                     tower (use M220). In %, set 0 to disable and use the Filament type instead. If
                     disabled, these filament types will have a defaut value of: - PVA: 80% to 60% -
                     SCAFF: 35% - FLEX: 35% - OTHERS: 100% Note that the wipe tower reset the speed
                     at 100% for the unretract in any case. If using marlin, M220 B/R is used to save
                     the speed override before the wipe tower print. (%, default: 0)
     --filament-melt-zone-pause N
                     Stay in melt zone for this amount of time before extracting the filament. Not
                     usually necessary. (milliseconds, default: 0)
     --filament-minimal-purge-on-wipe-tower N
                     After a tool change, the exact position of the newly loaded filament inside the
                     nozzle may not be known, and the filament pressure is likely not yet stable.
                     Before purging the print head into an infill or a sacrificial object, Slic3r
                     will always prime this amount of material into the wipe tower to produce
                     successive infill or sacrificial object extrusions reliably. (mm³, default: 15)
     --filament-ramming-parameters ABCD
                     This string is edited by RammingDialog and contains ramming specific parameters.
                     (default: "120 100 6.6 6.8 7.2 7.6 7.9 8.2 8.7 9.4 9.9 10.0| 0.05 6.6 0.45 6.8
                     0.95 7.8 1.45 8.3 1.95 9.7 2.45 10 2.95 7.6 3.45 7.6 3.95 7.6 4.45 7.6 4.95
                     7.6")
     --filament-retract-before-travel N
                     Retraction is not triggered when travel moves are shorter than this length. (mm,
                     default: 2)
     --filament-retract-before-wipe
                     With bowden extruders, it may be wise to do some amount of quick retract before
                     doing the wipe movement. (%, default: 0%)
     --filament-retract-layer-change
                     This flag enforces a retraction whenever a Z move is done (before it). (default:
                     0)
     --filament-retract-length N
                     When retraction is triggered, filament is pulled back by the specified amount
                     (the length is measured on raw filament, before it enters the extruder). (mm
                     (zero to disable), default: 2)
     --filament-retract-lift N
                     If you set this to a positive value, Z is quickly raised every time a retraction
                     is triggered. When using multiple extruders, only the setting for the first
                     extruder will be considered. (mm, default: 0)
     --filament-retract-lift-above N
                     If you set this to a positive value, Z lift will only take place above the
                     specified absolute Z. You can tune this setting for skipping lift on the first
                     layers. (mm, default: 0)
     --filament-retract-lift-below N
                     If you set this to a positive value, Z lift will only take place below the
                     specified absolute Z. You can tune this setting for limiting lift to the first
                     layers. (mm, default: 0)
     --filament-retract-restart-extra N
                     When the retraction is compensated after the travel move, the extruder will push
                     this additional amount of filament. This setting is rarely needed. (mm, default:
                     0)
     --filament-retract-speed N
                     The speed for retractions (this only applies to the extruder motor). (mm/s,
                     default: 40)
     --filament-seam-gap To avoid visible seam, the extrusion can be stoppped a bit before the end of the
                     loop. Can be a mm or a % of the current extruder diameter. (mm or %, default:
                     15%)
     --filament-shrink   Enter the shrinkage percentage that the filament will get after cooling (94% if
                     you measure 94mm instead of 100mm). The part will be scaled in xy to compensate.
                     Only the filament used for the perimeter is taken into account. Be sure to allow
                     enough space between objects, as this compensation is done after the checks. (%,
                     default: 100%)
     --filament-skinnydip-distance N
                     For stock extruders, usually 40-42mm. For bondtech extruder upgrade, usually
                     30-32mm. Start with a low value and gradually increase it until strings are
                     gone. If there are blobs on your wipe tower, your value is too high. (mm,
                     default: 31)
     --filament-toolchange-delay N
                     Time to wait after the filament is unloaded. May help to get reliable
                     toolchanges with flexible materials that may need more time to shrink to
                     original dimensions. (s, default: 0)
     --filament-toolchange-part-fan-speed N
                     Experimental setting. Fan speeds that are too high can clash with the hotend's
                     PID routine. (%, default: 50)
     --filament-toolchange-temp N
                     To further reduce stringing, it can be helpful to set a lower temperature just
                     prior to extracting filament from the hotend. (°C, default: 200)
     --filament-unload-time N
                     Time for the printer firmware (or the Multi Material Unit 2.0) to unload a
                     filament during a tool change (when executing the T code). This time is added to
                     the total print time by the G-code time estimator. (s, default: 0)
     --filament-unloading-speed N
                     Speed used for unloading the filament on the wipe tower (does not affect initial
                     part of unloading just after ramming). (mm/s, default: 90)
     --filament-unloading-speed-start N
                     Speed used for unloading the tip of the filament immediately after ramming.
                     (mm/s, default: 100)
     --filament-use-fast-skinnydip
                     Experimental: drops nozzle temperature during cooling moves instead of prior to
                     extraction to reduce wait time. (default: 0)
     --filament-use-skinnydip
                     Skinnydip performs a secondary dip into the meltzone to burn off fine strings of
                     filament (default: 0)
     --filament-wipe     This flag will move the nozzle while retracting to minimize the possible blob on
                     leaky extruders. (default: 0)
     --filament-wipe-advanced-pigment N
                     The pigment % for this filament (bewteen 0 and 1, 1=100%). 0 for
                     translucent/natural, 0.2-0.5 for white and 1 for black. (default: 0.5)
     --filament-wipe-extra-perimeter N
                     When the external perimeter loop extrusion ends, a wipe is done, going slightly
                     inside the print. The number in this settting increases the wipe by moving the
                     nozzle along the loop again before the final wipe. (mm, default: 0)
     --filament-wipe-speed N
                     Speed in mm/s of the wipe. If it's faster, it will try to go further away, as
                     the wipe time is set by ( 100% - 'retract before wipe') * 'retaction length' /
                     'retraction speed'. If set to zero, the travel speed is used. (default: 0)
     --full-fan-speed-layer N
                     Fan speed will be ramped up linearly from zero at layer
                     "disable_fan_first_layers" to maximum at layer "full_fan_speed_layer".
                     "full_fan_speed_layer" will be ignored if lower than "disable_fan_first_layers",
                     in which case the fan will be running at maximum allowed speed at layer
                     "disable_fan_first_layers" + 1. (default: 4)
     --parking-pos-retraction N
                     Distance of the extruder tip from the position where the filament is parked when
                     unloaded. This should match the value in printer firmware. (mm, default: 92)
     --pause-print-gcode ABCD
                     This G-code will be used as a code for the pause print (default: M601)
     --retract-length-toolchange N
                     When retraction is triggered before changing tool, filament is pulled back by
                     the specified amount (the length is measured on raw filament, before it enters
                     the extruder). Note: This value will be unretracted when this extruder will load
                     the next time. (mm (zero to disable), default: 10)
     --retract-restart-extra N
                     When the retraction is compensated after the travel move, the extruder will push
                     this additional amount of filament. This setting is rarely needed. (mm, default:
                     0)
     --retract-restart-extra-toolchange N
                     When the retraction is compensated after changing tool, the extruder will push
                     this additional amount of filament (but not on the first extruder after start,
                     as it should already be loaded). (mm, default: 0)
     --solid-min-thickness N
                     Minimum thickness of a top / bottom shell
     --standby-temperature-delta N
                     Temperature difference to be applied when an extruder is not active. Enables a
                     full-height "sacrificial" skirt on which the nozzles are periodically wiped.
                     (∆°C, default: -5)
     --template-custom-gcode ABCD
                     This G-code will be used as a custom code
     --wipe-advanced     Allow Slic3r to compute the purge volume via smart computations. Use the
                     pigment% of each filament and following parameters
     --wipe-advanced-algo
                     Algorithm for the advanced wipe. Linear : volume = nozzle + volume_mult *
                     (pigmentBefore-pigmentAfter) Quadratic: volume = nozzle + volume_mult *
                     (pigmentBefore-pigmentAfter)+ volume_mult * (pigmentBefore-pigmentAfter)^3
                     Hyperbola: volume = nozzle + volume_mult * (0.5+pigmentBefore) /
                     (0.5+pigmentAfter) (linear, quadra, expo; default: linear)
     --wipe-advanced-multiplier N
                     The volume multiplier used to compute the final volume to extrude by the
                     algorithm. (mm3, default: 60)
     --wipe-advanced-nozzle-melted-volume N
                     The volume of melted plastic inside your nozzle. Used by 'advanced wiping'.
                     (mm3, default: 120)
     --wipe-tower-bridging N
                     Maximal distance between supports on sparse infill sections. (mm, default: 10)
     --wipe-tower-brim N Width of the brim for the wipe tower. Can be in mm or in % of the (assumed) only
                     one nozzle diameter. (default: 150%)
     --wipe-tower-rotation-angle N
                     Wipe tower rotation angle with respect to x-axis. (°, default: 0)
     --wipe-tower-width N
                     Width of a wipe tower (mm, default: 60)
     --wipe-tower-x N    X coordinate of the left front corner of a wipe tower (mm, default: 180)
     --wipe-tower-y N    Y coordinate of the left front corner of a wipe tower (mm, default: 140)
     --wiping-volumes-extruders N
                     This vector saves required volumes to change from/to each tool used on the wipe
                     tower. These values are used to simplify creation of the full purging volumes
                     below. (default: 70,70,70,70,70,70,70,70,70,70)
     --wiping-volumes-matrix N
                     This matrix describes volumes (in cubic milimetres) required to purge the new
                     filament on the wipe tower for any given pair of tools. (default:
                     0,140,140,140,140,140,0,140,140,140,140,140,0,140,140,140,140,140,0,140,140,140,140,140,0)
     --z-step N          Set this to the height moved when your Z motor (or equivalent) turns one step.If
                     your motor needs 200 steps to move your head/plater by 1mm, this field should be
                     1/200 = 0.005. Note that the gcode will write the z values with 6 digits after
                     the dot if z_step is set (it's 3 digits if it's disabled). Set zero to disable.
                     (mm, default: 0.005)

#### Périmètre et enveloppe
     --avoid-crossing-not-first-layer
                     Do not use the 'Avoid crossing perimeters' on the first layer.
     --avoid-crossing-perimeters
                     Optimize travel moves in order to minimize the crossing of perimeters. This is
                     mostly useful with Bowden extruders which suffer from oozing. This feature slows
                     down both the print and the G-code generation.
     --avoid-crossing-perimeters-max-detour N
                     The maximum detour length for avoid crossing perimeters. If the detour is longer
                     than this value, avoid crossing perimeters is not applied for this travel path.
                     Detour length could be specified either as an absolute value or as percentage
                     (for example 50%) of a direct travel path. (mm or % (zero to disable), default:
                     0)
     --bottom-solid-layers N
                     Number of solid layers to generate on bottom surfaces. (default: 3)
     --bottom-solid-min-thickness N
                     The number of bottom solid layers is increased above bottom_solid_layers if
                     necessary to satisfy minimum thickness of bottom shell. (mm, default: 0)
     --ensure-vertical-shell-thickness
                     Add solid infill near sloping surfaces to guarantee the vertical shell thickness
                     (top+bottom solid layers). !! solid_over_perimeters may erase these surfaces !!
                     So you should deactivate it if you want to use this.
     --exact-last-layer-height
                     This setting controls the height of last object layers to put the last layer at
                     the exact highest height possible. Experimental.
     --external-perimeters-first
                     Print contour perimeters from the outermost one to the innermost one instead of
                     the default inverse order.
     --external-perimeters-hole
                     Only do the vase trick on the external side. Useful when you only want to remove
                     seam from screw hole.
     --external-perimeters-nothole
                     Only do the vase trick on the external side. Useful when the thickness is too
                     low.
     --external-perimeters-vase
                     Print contour perimeters in two circles, in a continuous way, like for a vase
                     mode. It needs the external_perimeters_first parameter to work. Doesn't work for
                     the first layer, as it may damage the bed overwise. Note that it will use
                     min_layer_height from your hardware setting as the base height (it doesn't start
                     at 0), so be sure to put here the lowest value your printer can handle. if it's
                     not lower than two times the current layer height, it falls back to the normal
                     algorithm, as there is not enough room to do two loops.
     --extra-perimeters  Add more perimeters when needed for avoiding gaps in sloping walls. Slic3r keeps
                     adding perimeters, until more than 70% of the loop immediately above is
                     supported. If you succeed in triggering the algorithm behind this setting,
                     please send me a message. Personally, I think it's useless.
     --extra-perimeters-odd-layers
                     Add one perimeter every odd layer. With this, infill is taken into the sandwich
                     and you may be able to reduce drastically the infill/perimeter overlap setting.
     --extra-perimeters-overhangs
                     Add more perimeters when needed for avoiding gaps in sloping walls. Slic3r keeps
                     adding perimeters until all overhangs are filled. !! this is a very slow
                     algorithm !! If you use this setting, strongly consider also using
                     overhangs_reverse.
     --gap-fill          Enable gap fill algorithm. It will extrude small lines between perimeters when
                     there is not enough space for another perimeter or an infill.
     --gap-fill-last     All gaps, between the last perimeter and the infill, which are thinner than a
                     perimeter will be filled by gapfill.
     --gap-fill-min-area N
                     This setting represents the minimum mm² for a gapfill extrusion to be created.
                     Can be a % of (perimeter width)² (default: 100%)
     --interface-shells  Force the generation of solid shells between adjacent materials/volumes. Useful
                     for multi-extruder prints with translucent materials or manual soluble support
                     material.
     --no-perimeter-unsupported-algo
                     Experimental option to remove perimeters where there is nothing under them and
                     where a bridged infill should be better. * Remove perimeters: remove the
                     unsupported perimeters, leave the bridge area as-is. * Keep only bridges: remove
                     the perimeters in the bridge areas, keep only bridges that end in solid area. *
                     Keep bridges and overhangs: remove the unsupported perimeters, keep only bridges
                     that end in solid area, fill the rest with overhang perimeters+bridges. * Fill
                     the voids with bridges: remove the unsupported perimeters, draw bridges over the
                     whole hole.* !! this one can escalate to problems with overhangs shaped like /\,
                     so you should use it only on one layer at a time via the height-range modifier!
                     !!Computationally intensive!!. (none, noperi, bridges, bridgesoverhangs, filled;
                     default: none)
     --only-one-perimeter-first-layer
                     Use only one perimeter on first layer, to give more space to the top infill
                     pattern.
     --only-one-perimeter-top
                     Use only one perimeter on flat top surface, to give more space to the top infill
                     pattern.
     --only-one-perimeter-top-other-algo
                     If you have some problem with the 'Only one perimeter on Top surfaces' option,
                     you can try to activate this on the problematic layer.
     --overhangs-reverse Extrude perimeters that have a part over an overhang in the reverse direction on
                     odd layers. This alternating pattern can drastically improve steep overhang. !!
                     this is a very slow algorithm (it uses the same results as
                     extra_perimeters_overhangs) !!
     --overhangs-reverse-threshold N
                     Number of mm the overhang need to be for the reversal to be considered useful.
                     Can be a % of the perimeter width. (default: 250%)
     --overhangs-width N Minimum unsupported width for an extrusion to apply the bridge flow to this
                     overhang. Can be in mm or in a % of the nozzle diameter. Set to 0 to deactivate.
                     (default: 75%)
     --overhangs-width-speed N
                     Minimum unsupported width for an extrusion to apply the bridge fan & overhang
                     speed to this overhang. Can be in mm or in a % of the nozzle diameter. Set to 0
                     to deactivate. (default: 55%)
     --perimeter-bonding This setting may slightly degrade the quality of your external perimeter, in
                     exchange for a better bonding between perimeters.Use it if you have great
                     difficulties with perimeter bonding, for example with high temperature
                     filaments. This percentage is the % of overlap between perimeters, a bit like
                     perimeter_overlap and external_perimeter_overlap, but in reverse. You have to
                     set perimeter_overlap and external_perimeter_overlap to 100%, or this setting
                     has no effect. 0: no effect, 50%: half of the nozzle will be over an already
                     extruded perimeter while extruding a new one, unless it's an external one). It's
                     very experimental, please report about the usefulness. It may be removed if
                     there is no use for it. (%, default: 0%)
     --perimeter-loop    Join the perimeters to create only one continuous extrusion without any z-hop.
                     Long inside travel (from external to holes) are not extruded to give some space
                     to the infill.
     --perimeter-loop-seam
                     Position of perimeters starting points. (nearest, rear; default: rear)
     --perimeter-round-corners
                     Internal perimeters will go around sharp corners by turning around instead of
                     making the same sharp corner. This can help when there are visible holes in
                     sharp corners on perimeters. It also help to print the letters on the benchy
                     stern. Can incur some more processing time, and corners are a bit less sharp.
     --perimeters N      This option sets the number of perimeters to generate for each layer. Note that
                     Slic3r may increase this number automatically when it detects sloping surfaces
                     which benefit from a higher number of perimeters if the Extra Perimeters option
                     is enabled. ((minimum)., default: 3)
     --seam-angle-cost   Cost of placing the seam at a bad angle. The worst angle (max penalty) is when
                     it's flat. (%, default: 80%)
     --seam-position     Position of perimeters' starting points. (cost, random, aligned, rear; default:
                     cost)
     --seam-travel-cost  Cost of moving the extruder. The highest penalty is when the point is the
                     furthest from the position of the extruder before extruding the external
                     perimeter (%, default: 20%)
     --solid-over-perimeters N
                     When you have a medium/hight number of top/bottom solid layers, and a low/medium
                     of perimeters, then it have to put some solid infill inside the part to have
                     enough solid layers. By setting this to something higher than 0, you can remove
                     this 'inside filling'. This number allow to keep some if there is a low number
                     of perimeter over the void. If this setting is equal or higher than the
                     top/bottom solid layer count, it won't evict anything. If this setting is set to
                     1, it will evict all solid fill are are only over perimeters. Set zero to
                     disable. !! ensure_vertical_shell_thickness may be erased by this setting !! You
                     may want to deactivate at least one of the two. (perimeters, default: 2)
     --spiral-vase       This feature will raise Z gradually while printing a single-walled object in
                     order to remove any visible seam. This option requires a single perimeter, no
                     infill, no top solid layers and no support material. You can still set any
                     number of bottom solid layers as well as skirt/brim loops. It won't work when
                     printing more than one single object.
     --thin-perimeters   Allow outermost perimeter to overlap itself to avoid the use of thin walls. Note
                     that flow isn't adjusted and so this will result in over-extruding and undefined
                     behavior.
     --thin-perimeters-all
                     Allow all perimeters to overlap, instead of just external ones.
     --thin-walls        Detect single-width walls (parts where two extrusions don't fit and we need to
                     collapse them into a single trace). If unchecked, Slic3r may try to fit
                     perimeters where it's not possible, creating some overlap leading to
                     over-extrusion.
     --thin-walls-merge  Allow the external perimeter to merge the thin walls in the path. You can
                     deactivate this if you are using thin walls as a custom support, to reduce
                     adhesion a little.
     --thin-walls-min-width N
                     Minimum width for the extrusion to be extruded (widths lower than the nozzle
                     diameter will be over-extruded at the nozzle diameter). If expressed as
                     percentage (for example 110%) it will be computed over nozzle diameter. The
                     default behavior of PrusaSlicer is with a 33% value. Put 100% to avoid any sort
                     of over-extrusion. (default: 33%)
     --thin-walls-overlap N
                     Overlap between the thin wall and the perimeters. Can be a % of the external
                     perimeter width (default 50%) (default: 50%)
     --top-solid-layers N
                     Number of solid layers to generate on top surfaces. (default: 3)
     --top-solid-min-thickness N
                     The number of top solid layers is increased above top_solid_layers if necessary
                     to satisfy minimum thickness of top shell. This is useful to prevent pillowing
                     effect when printing with variable layer height. (mm, default: 0)

#### Découpage
     --allow-empty-layers
                     Do not prevent the gcode builder to trigger an exception if a full layer is
                     empty and so the print will have to start from thin air afterward.
     --clip-multipart-objects
                     When printing multi-material objects, this settings will make Slic3r to clip the
                     overlapping object parts one by the other (2nd part will be clipped by the 1st,
                     3rd part will be clipped by the 1st and 2nd etc).
     --colorprint-heights N
                     Heights at which a filament change is to occur. (default: )
     --curve-smoothing-angle-concave N
                     Minimum (concave) angle at a vertex to enable smoothing (trying to create a
                     curve around the vertex). 180 : nothing will be smooth, 0 : all angles will be
                     smoothened. (°, default: 0)
     --curve-smoothing-angle-convex N
                     Minimum (convex) angle at a vertex to enable smoothing (trying to create a curve
                     around the vertex). 180 : nothing will be smooth, 0 : all angles will be
                     smoothened. (°, default: 0)
     --curve-smoothing-cutoff-dist N
                     Maximum distance between two points to allow adding new ones. Allow to avoid
                     distorting long strait areas. Set zero to disable. (mm, default: 2)
     --curve-smoothing-precision N
                     These parameters allow the slicer to smooth the angles in each layer. The
                     precision will be at least the new precision of the curve. Set to 0 to
                     deactivate. Note: as it uses the polygon's edges and only works in the 2D
                     planes, you must have a very clean or hand-made 3D model. It's really only
                     useful to smoothen functional models or very wide angles. (mm, default: 0)
     --first-layer-height N
                     When printing with very low layer heights, you might still want to print a
                     thicker bottom layer to improve adhesion and tolerance for non perfect build
                     plates. This can be expressed as an absolute value or as a percentage (for
                     example: 75%) over the lowest nozzle diameter used in by the object. (mm or %,
                     default: 75%)
     --first-layer-size-compensation N
                     The first layer will be grown / shrunk in the XY plane by the configured value
                     to compensate for the 1st layer squish aka an Elephant Foot effect. (should be
                     negative = inwards) (mm, default: 0)
     --first-layer-size-compensation-layers N
                     The number of layers on which the elephant foot compensation will be active. The
                     first layer will be shrunk by the elephant foot compensation value, then the
                     next layers will be gradually shrunk less, up to the layer indicated by this
                     value. (layers, default: 1)
     --hole-size-compensation N
                     The convex holes will be grown / shrunk in the XY plane by the configured value
                     (negative = inwards, positive = outwards, should be negative as the holes are
                     always a bit smaller irl). This might be useful for fine-tuning hole sizes. This
                     setting behaves the same as 'Inner XY size compensation' but only for convex
                     shapes. It's added to 'Inner XY size compensation', it does not replace it. (mm,
                     default: 0)
     --hole-size-threshold N
                     Maximum area for the hole where the hole_size_compensation will apply fully.
                     After that, it will decrease down to 0 for four times this area. Set to 0 to let
                     the hole_size_compensation apply fully for all detected holes (mm², default:
                     100)
     --hole-to-polyhole  Search for almost-circular holes that span more than one layer and convert the
                     geometry to polyholes. Use the nozzle size and the (biggest) diameter to compute
                     the polyhole. See http://hydraraptor.blogspot.com/2011/02/polyholes.html
     --hole-to-polyhole-threshold N
                     Maximum defection of a point to the estimated radius of the circle. As cylinders
                     are often exported as triangles of varying size, points may not be on the circle
                     circumference. This setting allows you some leway to broaden the detection. In
                     mm or in % of the radius. (mm or %, default: 0.01)
     --hole-to-polyhole-twisted
                     Rotate the polyhole every layer.
     --model-precision N This is the rounding error of the input object. It's used to align points that
                     should be in the same line. Set zero to disable. (mm, default: 0.0001)
     --resolution N      Minimum detail resolution, used to simplify the input file for speeding up the
                     slicing job and reducing memory usage. High-resolution models often carry more
                     details than printers can render. Set zero to disable any simplification and use
                     full resolution from input. Note: Slic3r has an internal working resolution of
                     0.0001mm. Infill & Thin areas are simplified up to 0.0125mm. (mm, default:
                     0.002)
     --solid-layers N    Number of solid layers to generate on top and bottom surfaces.
     --xy-inner-size-compensation N
                     The object will be grown/shrunk in the XY plane by the configured value
                     (negative = inwards, positive = outwards). This might be useful for fine-tuning
                     sizes. This one only applies to the 'inner' shell of the object (!!! horizontal
                     holes break the shell !!!) (mm, default: 0)
     --xy-size-compensation N
                     The object will be grown/shrunk in the XY plane by the configured value
                     (negative = inwards, positive = outwards). This might be useful for fine-tuning
                     sizes. This one only applies to the 'exterior' shell of the object. !!! it's
                     recommended you put the same value into the 'Inner XY size compensation', unless
                     you are sure you don't have horizontal holes. !!! (mm, default: 0)

#### Remplissage
     --bottom-fill-pattern, --external-fill-pattern
                     Fill pattern for bottom infill. This only affects the bottom visible layer, and
                     not its adjacent solid shells. (rectilinear, monotonicgapfill, monotonic,
                     concentric, concentricgapfill, hilbertcurve, archimedeanchords, octagramspiral,
                     smooth; default: monotonic)
     --bridge-angle N    Bridging angle override. If left to zero, the bridging angle will be calculated
                     automatically. Otherwise the provided angle will be used for all bridges. Use
                     180° for zero angle. (°, default: 0)
     --bridged-infill-margin N
                     This parameter grows the bridged solid infill layers by the specified mm to
                     anchor them into the part. Put 0 to deactivate it. Can be a % of the width of
                     the external perimeter. (mm/%, default: 200%)
     --brim-ears-pattern Pattern for the ear. The concentric is the default one. The rectilinear has a
                     perimeter around it, you can try it if the concentric has too many problems to
                     stick to the build plate. (concentric, rectilinear; default: concentric)
     --enforce-full-fill-volume
                     Experimental option which modifies (in solid infill) fill flow to have the exact
                     amount of plastic inside the volume to fill (it generally changes the flow from
                     -7% to +4%, depending on the size of the surface to fill and the overlap
                     parameters, but it can go as high as +50% for infill in very small areas where
                     rectilinear doesn't have good coverage). It has the advantage to remove the
                     over-extrusion seen in thin infill areas, from the overlap ratio
     --external-infill-margin N
                     This parameter grows the top/bottom/solid layers by the specified mm to anchor
                     them into the part. Put 0 to deactivate it. Can be a % of the width of the
                     perimeters. (mm/%, default: 150%)
     --fill-angle N      Default base angle for infill orientation. Cross-hatching will be applied to
                     this. Bridges will be infilled using the best direction Slic3r can detect, so
                     this setting does not affect them. (°, default: 45)
     --fill-angle-increment N
                     Add this angle each layer to the base angle for infill. May be useful for art,
                     or to be sure to hit every object's feature even with very low infill. Still
                     experimental, tell me what makes it useful, or the problems that arise using it.
                     (°, default: 0)
     --fill-density      Density of internal infill, expressed in the range 0% - 100%. (%, default: 18%)
     --fill-pattern      Fill pattern for general low-density infill. (rectilinear, monotonic, grid,
                     triangles, stars, cubic, line, concentric, honeycomb, 3dhoneycomb, gyroid,
                     hilbertcurve, archimedeanchords, octagramspiral, scatteredrectilinear,
                     adaptivecubic, supportcubic; default: stars)
     --fill-smooth-distribution
                     This is the percentage of the flow that is used for the second ironing pass.
                     Typical 10-20%. Should not be higher than 20%, unless you have your top
                     extrusion width greatly superior to your nozzle width. A value too low and your
                     extruder will eat the filament. A value too high and the first pass won't print
                     well. (%, default: 10%)
     --fill-smooth-width N
                     This is the width of the ironing pass, in a % of the top infill extrusion width,
                     should not be more than 50% (two times more lines, 50% overlap). It's not
                     necessary to go below 25% (four times more lines, 75% overlap). If you have
                     problems with your ironing process, don't forget to look at the flow->above
                     bridge flow, as this setting should be set to min 110% to let you have enough
                     plastic in the top layer. A value too low will make your extruder eat the
                     filament. (mm/%, default: 50%)
     --infill-anchor N   Connect an infill line to an internal perimeter with a short segment of an
                     additional perimeter. If expressed as percentage (example: 15%) it is calculated
                     over infill extrusion width. Slic3r tries to connect two close infill lines to a
                     short perimeter segment. If no such perimeter segment shorter than
                     infill_anchor_max is found, the infill line is connected to a perimeter segment
                     at just one side and the length of the perimeter segment taken is limited to
                     this parameter, but no longer than anchor_length_max. Set this parameter to zero
                     to disable anchoring perimeters connected to a single infill line. (mm or %,
                     default: 600%)
     --infill-anchor-max N
                     Connect an infill line to an internal perimeter with a short segment of an
                     additional perimeter. If expressed as percentage (example: 15%) it is calculated
                     over infill extrusion width. Slic3r tries to connect two close infill lines to a
                     short perimeter segment. If no such perimeter segment shorter than this
                     parameter is found, the infill line is connected to a perimeter segment at just
                     one side and the length of the perimeter segment taken is limited to
                     infill_anchor, but no longer than this parameter. If set to 0, the old algorithm
                     for infill connection will be used, it should create the same result as with
                     1000 & 0. (mm or %, default: 0)
     --infill-connection Give to the infill algorithm if the infill needs to be connected, and on which
                     perimeters Can be useful for art or with high infill/perimeter overlap. The
                     result may vary between infill types. (connected, holes, outershell,
                     notconnected; default: connected)
     --infill-connection-bottom
                     Give to the infill algorithm if the infill needs to be connected, and on which
                     perimeters Can be useful for art or with high infill/perimeter overlap. The
                     result may vary between infill types. (connected, holes, outershell,
                     notconnected; default: connected)
     --infill-connection-solid
                     Give to the infill algorithm if the infill needs to be connected, and on which
                     perimeters Can be useful for art or with high infill/perimeter overlap. The
                     result may vary between infill types. (connected, holes, outershell,
                     notconnected; default: connected)
     --infill-connection-top
                     Give to the infill algorithm if the infill needs to be connected, and on which
                     perimeters Can be useful for art or with high infill/perimeter overlap. The
                     result may vary between infill types. (connected, holes, outershell,
                     notconnected; default: connected)
     --infill-dense      Enables the creation of a support layer under the first solid layer. This allows
                     you to use a lower infill ratio without compromising the top quality. The dense
                     infill is laid out with a 50% infill density.
     --infill-dense-algo Choose the way the dense layer is laid out. The automatic option lets it try to
                     draw the smallest surface with only strait lines inside the sparse infill. The
                     Anchored option just slightly enlarges (by 'Default infill margin') the surfaces
                     that need a better support. (automatic, autosmall, autoenlarged, enlarged;
                     default: autoenlarged)
     --infill-every-layers N
                     This feature allows you to combine infill and speed up your print by extruding
                     thicker infill layers while preserving thin perimeters, thus accuracy. (layers,
                     default: 1)
     --infill-first      This option will switch the print order of perimeters and infill, making the
                     latter first.
     --infill-only-where-needed
                     This option will limit infill to the areas actually needed for supporting
                     ceilings (it will act as internal support material). If enabled, this slows down
                     the G-code generation due to the multiple checks involved.
     --solid-fill-pattern
                     Fill pattern for solid (internal) infill. This only affects the solid
                     not-visible layers. You should use rectilinear in most cases. You can try
                     ironing for translucent material. Rectilinear (filled) replaces zig-zag patterns
                     by a single big line & is more efficient for filling little spaces. (smooth,
                     rectilinear, rectilineargapfill, monotonic, concentric, concentricgapfill,
                     hilbertcurve, archimedeanchords, octagramspiral; default: rectilineargapfill)
     --solid-infill-below-area N
                     Force solid infill for regions having a smaller area than the specified
                     threshold. (mm², default: 70)
     --solid-infill-every-layers N
                     This feature allows you to force a solid layer every given number of layers.
                     Zero to disable. You can set this to any value (for example 9999); Slic3r will
                     automatically choose the maximum possible number of layers to combine according
                     to nozzle diameter and layer height. (layers, default: 0)
     --top-fill-pattern, --external-fill-pattern
                     Fill pattern for top infill. This only affects the top visible layer, and not
                     its adjacent solid shells. (rectilinear, monotonicgapfill, monotonic,
                     concentric, concentricgapfill, hilbertcurve, archimedeanchords, octagramspiral,
                     sawtooth, smooth, smoothtriple, smoothhilbert; default: monotonic)

#### Lissage
     --ironing           Enable ironing of the top layers with the hot print head for smooth surface
     --ironing-angle N   Ironing angle. if negative, it will use the fill angle. (°, default: -1)
     --ironing-flowrate  Percent of a flow rate relative to object's normal layer height. It's the
                     percentage of the layer that will be over-extruded on top to do the ironing. (%,
                     default: 15%)
     --ironing-spacing N Distance between ironing lines (mm, default: 0.1)
     --ironing-speed N   Ironing speed. Used for the ironing pass of the ironing infill pattern, and the
                     post-process infill. Can be defined as mm.s, or a % of the top solid infill
                     speed. Ironing extrusions are ignored from the automatic volumetric speed
                     computation. (mm/s, default: 15)
     --ironing-type      Ironing Type (top, topmost, solid; default: top)

#### Jupe et bordure
     --brim-ears         Only draw brim over the sharp edges of the model.
     --brim-ears-detection-length N
                     The geometry will be decimated before dectecting sharp angles. This parameter
                     indicates the minimum length of the deviation for the decimation. 0 to
                     deactivate (mm, default: 1)
     --brim-ears-max-angle N
                     Maximum angle to let a brim ear appear. If set to 0, no brim will be created. If
                     set to ~178, brim will be created on everything but strait sections. (°,
                     default: 125)
     --brim-inside-holes Allow to create a brim over an island when it's inside a hole (or surrounded by
                     an object).
     --brim-offset N     Distance between the brim and the part. Should be kept at 0 unless you encounter
                     great difficulties to separate them. It's subtracted to brim_width and
                     brim_width_interior, so it has to be lower than them (mm, default: 0)
     --brim-width N      Horizontal width of the brim that will be printed around each object on the
                     first layer. (mm, default: 0)
     --brim-width-interior N
                     Horizontal width of the brim that will be printed inside each object on the
                     first layer. (mm, default: 0)
     --min-skirt-length N
                     Generate no less than the number of skirt loops required to consume the
                     specified amount of filament on the bottom layer. For multi-extruder machines,
                     this minimum applies to each extruder. (mm, default: 0)
     --skirt-brim N      Extra skirt lines on the first layer. (lines, default: 0)
     --skirt-distance N  Distance between skirt and object(s). Set this to zero to attach the skirt to
                     the object(s) and get a brim for better adhesion. (mm, default: 6)
     --skirt-distance-from-brim
                     The distance is computed from the brim and not from the objects
     --skirt-height N    Height of skirt expressed in layers. Set this to a tall value to use skirt as a
                     shield against drafts. (layers, default: 1)
     --skirts N          Number of loops for the skirt. If the Minimum Extrusion Length option is set,
                     the number of loops might be greater than the one configured here. Set this to
                     zero to disable skirt completely. (default: 1)

#### Support
     --dont-support-bridges
                     Experimental option for preventing support material from being generated under
                     bridged areas.
     --raft-layers N     The object will be raised by this number of layers, and support material will be
                     generated under it. (layers, default: 0)
     --support-material  Enable support material generation.
     --support-material-angle N
                     Use this setting to rotate the support material pattern on the horizontal plane.
                     (°, default: 0)
     --support-material-auto
                     If checked, supports will be generated automatically based on the overhang
                     threshold value. If unchecked, supports will be generated inside the "Support
                     Enforcer" volumes only.
     --support-material-buildplate-only
                     Only create support if it lies on a build plate. Don't create support on a
                     print.
     --support-material-contact-distance-bottom N
                     The vertical distance between object and support material interface(when the
                     support is printed on top of the object). Can be a % of the extruding width used
                     for the interface layers. (mm, default: 0.2)
     --support-material-contact-distance-top N
                     The vertical distance between support material interface and the object(when the
                     object is printed on top of the support). Setting this to 0 will also prevent
                     Slic3r from using bridge flow and speed for the first object layer. Can be a %
                     of the extruding width used for the interface layers. (mm, default: 0.2)
     --support-material-contact-distance-type
                     How to compute the vertical z-distance. From filament: it uses the nearest bit
                     of the filament. When a bridge is extruded, it goes below the current plane.
                     From plane: it uses the plane-z. Same as 'from filament' if no 'bridge' is
                     extruded. None: No z-offset. Useful for Soluble supports. (filament, plane,
                     none; default: plane)
     --support-material-enforce-layers N
                     Generate support material for the specified number of layers counting from
                     bottom, regardless of whether normal support material is enabled or not and
                     regardless of any angle threshold. This is useful for getting more adhesion of
                     objects having a very thin or poor footprint on the build plate. (layers,
                     default: 0)
     --support-material-interface-contact-loops
                     Cover the top contact layer of the supports with loops. Disabled by default.
     --support-material-interface-layers N
                     Number of interface layers to insert between the object(s) and support material.
                     (layers, default: 3)
     --support-material-interface-pattern
                     Pattern for interface layers. (rectilinear, monotonic, concentric,
                     concentricgapfill, hilbertcurve, sawtooth, smooth; default: rectilinear)
     --support-material-interface-spacing N
                     Spacing between interface lines. Set zero to get a solid interface. (mm,
                     default: 0)
     --support-material-interface-speed N
                     Speed for printing support material interface layers. If expressed as percentage
                     (for example 50%) it will be calculated over support material speed. (mm/s or %,
                     default: 100%)
     --support-material-pattern
                     Pattern used to generate support material. (rectilinear, rectilinear-grid,
                     honeycomb; default: rectilinear)
     --support-material-solid-first-layer
                     Use a solid layer instead of a raft for the layer that touches the build plate.
     --support-material-spacing N
                     Spacing between support material lines. (mm, default: 2.5)
     --support-material-speed N
                     Speed for printing support material. (mm/s, default: 60)
     --support-material-synchronize-layers
                     Synchronize support layers with the object print layers. This is useful with
                     multi-material printers, where the extruder switch is expensive.
     --support-material-threshold N
                     Support material will not be generated for overhangs whose slope angle (90° =
                     vertical) is above the given threshold. In other words, this value represent the
                     most horizontal slope (measured from the horizontal plane) that you can print
                     without support material. Set to zero for automatic detection (recommended).
                     (°, default: 0)
     --support-material-with-sheath
                     Add a sheath (a single perimeter line) around the base support. This makes the
                     support more reliable, but also more difficult to remove.
     --support-material-xy-spacing N
                     XY separation between an object and its support. If expressed as percentage (for
                     example 50%), it will be calculated over external perimeter width. (mm or %,
                     default: 50%)

#### Vitesse
     --bridge-acceleration N
                     This is the acceleration your printer will use for bridges. Can be a % of the
                     default acceleration Set zero to disable acceleration control for bridges. Note
                     that it won't be applied to overhangs, they still use the perimeter
                     acceleration. (mm/s² or %, default: 0)
     --bridge-speed N    Speed for printing bridges. (mm/s, default: 60)
     --bridge-speed-internal N
                     Speed for printing the bridges that support the top layer. Can be a % of the
                     bridge speed. (mm/s or %, default: 150%)
     --default-acceleration N
                     This is the acceleration your printer will be reset to after the role-specific
                     acceleration values are used (perimeter/infill). You can set it as a % of the
                     max of the X/Y machine acceleration limit. Set zero to prevent resetting
                     acceleration at all. (mm/s² or %, default: 0)
     --external-perimeter-speed N
                     This separate setting will affect the speed of external perimeters (the visible
                     ones). If expressed as percentage (for example: 80%) it will be calculated on
                     the perimeters speed setting above. Set to zero for auto. (mm/s or %, default:
                     50%)
     --first-layer-acceleration N
                     This is the acceleration your printer will use for first layer. Can be a % of
                     the default acceleration Set zero to disable acceleration control for first
                     layer. (mm/s² or %, default: 0)
     --first-layer-infill-speed N
                     If expressed as absolute value in mm/s, this speed will be applied as a maximum
                     for all infill print moves of the first layer. If expressed as a percentage it
                     will scale the current infill speed. Set it at 100% to remove any infill first
                     layer speed modification. (mm/s or %, default: 30)
     --first-layer-min-speed N
                     Minimum speed when printing the first layer. Set zero to disable. (mm/s,
                     default: 0)
     --first-layer-speed N
                     If expressed as absolute value in mm/s, this speed will be applied as a maximum
                     to all the print moves (but infill) of the first layer. If expressed as a
                     percentage it will scale the current speed. Set it at 100% to remove any first
                     layer speed modification (but for infill). (mm/s or %, default: 30)
     --gap-fill-speed N  Speed for filling small gaps using short zigzag moves. Keep this reasonably low
                     to avoid too much shaking and resonance issues. Gap fill extrusions are ignored
                     from the automatic volumetric speed computation, unless you set it to 0. (mm/s,
                     default: 20)
     --infill-acceleration N
                     This is the acceleration your printer will use for infill. Can be a % of the
                     default acceleration Set zero to disable acceleration control for infill.
                     (mm/s² or %, default: 0)
     --infill-speed N    Speed for printing the internal fill. Set to zero for auto. (mm/s, default: 80)
     --max-gcode-per-second N
                     If your firmware stops while printing, it may have its gcode queue full. Set
                     this parameter to merge extrusions into bigger ones to reduce the number of
                     gcode commands the printer has to process each second. On 8bit controlers, a
                     value of 150 is typical. Note that reducing your printing speed (at least for
                     the external extrusions) will reduce the number of time this will triggger and
                     so increase quality. Set zero to disable. (default: 1500)
     --max-print-speed N When setting other speed settings to 0, Slic3r will autocalculate the optimal
                     speed in order to keep constant extruder pressure. This experimental setting is
                     used to set the highest print speed you want to allow. (mm/s, default: 80)
     --max-speed-reduction
                     Set to 90% if you don't want the speed to be reduced by more than 90%. (%,
                     default: 90%)
     --min-length N      [Deprecated] Prefer using max_gcode_per_second instead, as it's much better when
                         you have very different speeds for features. Too many too small commands may
                         overload the firmware / connection. Put a higher value here if you see strange
                     slowdown. Set zero to disable. (mm, default: 0.035)
     --min-print-speed N Slic3r will never scale the speed below this one. (mm/s, default: 10)
     --min-width-top-surface N
                     If a top surface has to be printed and it's partially covered by another layer,
                     it won't be considered at a top layer where its width is below this value. This
                     can be useful to not let the 'one perimeter on top' trigger on surface that
                     should be covered only by perimeters. This value can be a mm or a % of the
                     perimeter extrusion width. (mm or %, default: 200%)
     --overhangs-speed N Speed for printing overhangs. Can be a % of the bridge speed. (mm/s, default:
                     100%)
     --perimeter-acceleration N
                     This is the acceleration your printer will use for perimeters. Can be a % of the
                     default acceleration Set zero to disable acceleration control for perimeters.
                     (mm/s² or %, default: 0)
     --perimeter-speed N Speed for perimeters (contours, aka vertical shells). Set to zero for auto.
                     (mm/s, default: 60)
     --small-perimeter-max-length N
                     This sets the end of the threshold for small perimeter length. Every perimeter
                     loop lower than this will see their speed reduced a bit, from their normal speed
                     at this length down to small perimeter speed. Can be a mm or a % of the nozzle
                     diameter. (mm or %, default: 20)
     --small-perimeter-min-length N
                     This sets the threshold for small perimeter length. Every loop with a length
                     lower than this will be printed at small perimeter speed Can be a mm value or a
                     % of the nozzle diameter. (mm or %, default: 6)
     --small-perimeter-speed N
                     This separate setting will affect the speed of perimeters having radius <= 6.5mm
                     (usually holes). If expressed as percentage (for example: 80%) it will be
                     calculated on the perimeters speed setting above. Set to zero for auto. (mm/s or
                     %, default: 15)
     --solid-infill-speed N
                     Speed for printing solid regions (top/bottom/internal horizontal shells). This
                     can be expressed as a percentage (for example: 80%) over the default infill
                     speed. Set to zero for auto. (mm/s or %, default: 20)
     --thin-walls-speed N
                     Speed for thin walls (external extrusions that are alone because the obect is
                     too thin at these places). (mm/s, default: 30)
     --top-solid-infill-speed N
                     Speed for printing top solid layers (it only applies to the uppermost external
                     layers and not to their internal solid layers). You may want to slow down this
                     to get a nicer surface finish. This can be expressed as a percentage (for
                     example: 80%) over the solid infill speed above. Set to zero for auto. (mm/s or
                     %, default: 15)
     --travel-acceleration N
                         Acceleration for travel moves (jumps between distant extrusion points). Note
                         that the deceleration of a travel will use the acceleration value of the
                         extrusion that will be printed after it (if any) (mm/s² or %, default: 1500)
     --travel-speed N    Speed for travel moves (jumps between distant extrusion points). (mm/s, default:
                     130)
     --travel-speed-z N  Speed for movements along the Z axis. When set to zero, this value is ignored
                     and regular travel speed is used instead. (mm/s, default: 0)

#### Largeur et débit
     --bridge-flow-ratio This factor affects the amount of plastic for bridging. You can decrease it
                     slightly to pull the extrudates and prevent sagging, although default settings
                     are usually good and you should experiment with cooling (use a fan) before
                     tweaking this. (%, default: 100%)
     --bridge-overlap    Amount of overlap between lines of the bridge. If want more space between line
                     (or less), you can modify it. Default to 100%. A value of 50% will create two
                     times less lines. (%, default: 100%)
     --external-perimeter-cut-corners
                     Activate this option to modify the flow to acknowledge that the nozzle is round
                     and the corners will have a round shape, and so change the flow to realize that
                     and avoid over-extrusion. 100% is activated, 0% is deactivated and 50% is
                     half-activated. Note: At 100% this changes the flow by ~5% over a very small
                     distance (~nozzle diameter), so it shouldn't be noticeable unless you have a
                     very big nozzle and a very precise printer. It's very experimental, please
                     report about the usefulness. It may be removed if there is no use for it. (%,
                     default: 0%)
     --external-perimeter-extrusion-spacing N
                     Like the External perimeters width, but this value is the distance between the
                     edge and the 'frontier' to the next perimeter. Setting the spacing will
                     deactivate the width setting, and vice versa. You can set either 'Spacing', or
                     'Width'; the other will be calculated, using the perimeter 'Overlap' percentages
                     and default layer height. (mm or %, default: 0)
     --external-perimeter-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for external
                     perimeters. If left zero, default extrusion width will be used if set, otherwise
                     1.05 x nozzle diameter will be used. If expressed as percentage (for example
                     112.5%), it will be computed over nozzle diameter. You can set either 'Spacing',
                     or 'Width'; the other will be calculated, using the perimeter 'Overlap'
                     percentages and default layer height. (mm or %, default: 105%)
     --external-perimeter-overlap
                     This setting allows you to reduce the overlap between the perimeters and the
                     external one, to reduce the impact of the perimeters' artifacts. 100% means that
                     no gap is left, and 0% means that the external perimeter isn't contributing to
                     the overlap with the 'inner' one. It's very experimental, please report about
                     the usefulness. It may be removed if there is no use for it. (%, default: 100%)
     --extrusion-spacing N
                     Like Default extrusion width but spacing is the distance between two lines (as
                     they overlap a bit, it's not the same). You can set either 'Spacing', or
                     'Width'; the other will be calculated, using the perimeter 'Overlap' percentages
                     and default layer height. (mm or %, default: 100%)
     --extrusion-width N Set this to a non-zero value to allow a manual extrusion width. If left to zero,
                     Slic3r derives extrusion widths from the nozzle diameter (see the tooltips for
                     perimeter extrusion width, infill extrusion width etc). If expressed as
                     percentage (for example: 105%), it will be computed over nozzle diameter. You
                     can set either 'Spacing', or 'Width'; the other will be calculated, using the
                     perimeter 'Overlap' percentages and default layer height. (mm or %, default: 0)
     --fill-top-flow-ratio
                     You can increase this to over-extrude on the top layer if there is not enough
                     plastic to make a good fill. (%, default: 100%)
     --first-layer-extrusion-spacing N
                     Like First layer width but spacing is the distance between two lines (as they
                     overlap a bit, it's not the same). You can set either 'Spacing', or 'Width'; the
                     other will be calculated, using the perimeter 'Overlap' percentages and default
                     layer height. (mm or %, default: 0)
     --first-layer-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for first layer.
                     You can use this to force fatter extrudates for better adhesion. If expressed as
                     percentage (for example 140%) it will be computed over the nozzle diameter of
                     the nozzle used for the type of extrusion. If set to zero, it will use the
                     default extrusion width. You can set either 'Spacing', or 'Width'; the other
                     will be calculated, using the perimeter 'Overlap' percentages and default layer
                     height. (mm or %, default: 140%)
     --first-layer-flow-ratio
                     You can increase this to over-extrude on the first layer if there is not enough
                     plastic because your bed isn't levelled. Note: DON'T USE THIS if your only
                     problem is bed levelling, LEVEL YOUR BED! Use this setting only as last resort
                     after all calibrations failed. (%, default: 100%)
     --gap-fill-overlap  This setting allows you to reduce the overlap between the perimeters and the gap
                     fill. 100% means that no gaps are left, and 0% means that the gap fill won't
                     touch the perimeters. It's very experimental, please report about the
                     usefulness. It may be removed if there is no use for it. (%, default: 100%)
     --infill-extrusion-spacing N
                     Like First layer width but spacing is the distance between two lines (as they
                     overlap a bit, it's not the same). You can set either 'Spacing', or 'Width'; the
                     other will be calculated, using default layer height. (mm or %, default: 100%)
     --infill-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for infill. If left
                     as zero, default extrusion width will be used if set, otherwise 1.125 x nozzle
                     diameter will be used. You may want to use fatter extrudates to speed up the
                     infill and make your parts stronger. If expressed as percentage (for example
                     110%) it will be computed over nozzle diameter. You can set either 'Spacing', or
                     'Width'; the other will be calculated, using default layer height. (mm or %,
                     default: 0)
     --infill-overlap N  This setting applies an additional overlap between infill and perimeters for
                     better bonding. Theoretically this shouldn't be needed, but backlash might cause
                     gaps. If expressed as percentage (example: 15%) it is calculated over perimeter
                     extrusion width. (mm or %, default: 25%)
     --over-bridge-flow-ratio
                     Flow ratio to compensate for the gaps in a bridged top surface. Used for ironing
                     infillpattern to prevent regions where the low-flow pass does not provide a
                     smooth surface due to a lack of plastic. You can increase it slightly to pull
                     the top layer at the correct height. Recommended maximum: 120%. (%, default:
                     100%)
     --perimeter-extrusion-spacing N
                     Like Perimeter width but spacing is the distance between two perimeter lines (as
                     they overlap a bit, it's not the same). You can set either 'Spacing', or
                     'Width'; the other will be calculated, using the perimeter 'Overlap' percentages
                     and default layer height. (mm or %, default: 100%)
     --perimeter-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for perimeters. You
                     may want to use thinner extrudates to get more accurate surfaces. If left zero,
                     default extrusion width will be used if set, otherwise 1.125 x nozzle diameter
                     will be used. If expressed as percentage (for example 105%) it will be computed
                     over nozzle diameter. You can set either 'Spacing', or 'Width'; the other will
                     be calculated, using the perimeter 'Overlap' percentages and default layer
                     height. (mm or %, default: 0)
     --perimeter-overlap This setting allows you to reduce the overlap between the perimeters, to reduce
                     the impact of the perimeters' artifacts. 100% means that no gap is left, and 0%
                     means that perimeters are not touching each other anymore. It's very
                     experimental, please report about the usefulness. It may be removed if there is
                     no use for it. (%, default: 100%)
     --skirt-extrusion-width N
                     Horizontal width of the skirt that will be printed around each object. If left
                     as zero, first layer extrusion width will be used if set and the skirt is only 1
                     layer height, or perimeter extrusion width will be used (using the computed
                     value if not set). (mm or %, default: 0)
     --solid-infill-extrusion-spacing N
                     Like Solid infill width but spacing is the distance between two lines (as they
                     overlap a bit, it's not the same). You can set either 'Spacing', or 'Width'; the
                     other will be calculated, using default layer height. (mm or %, default: 100%)
     --solid-infill-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for infill for
                     solid surfaces. If left as zero, default extrusion width will be used if set,
                     otherwise 1.125 x nozzle diameter will be used. If expressed as percentage (for
                     example 110%) it will be computed over nozzle diameter. You can set either
                     'Spacing', or 'Width'; the other will be calculated, using default layer height.
                     (mm or %, default: 0)
     --support-material-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for support
                     material. If left as zero, default extrusion width will be used if set,
                     otherwise nozzle diameter will be used. If expressed as percentage (for example
                     110%) it will be computed over nozzle diameter. (mm or %, default: 0)
     --top-infill-extrusion-spacing N
                     Like Top solid infill width but spacing is the distance between two lines (as
                     they overlap a bit, it's not the same). You can set either 'Spacing', or
                     'Width'; the other will be calculated, using default layer height. (mm or %,
                     default: 0)
     --top-infill-extrusion-width N
                     Set this to a non-zero value to set a manual extrusion width for infill for top
                     surfaces. You may want to use thinner extrudates to fill all narrow regions and
                     get a smoother finish. If left as zero, default extrusion width will be used if
                     set, otherwise nozzle diameter will be used. If expressed as percentage (for
                     example 110%) it will be computed over nozzle diameter. You can set either
                     'Spacing', or 'Width'; the other will be calculated, using default layer height.
                     (mm or %, default: 105%)

#### Extrudeuses multiples:
     --deretract-speed N The speed for loading of a filament into extruder after retraction (this only
                     applies to the extruder motor). If left as zero, the retraction speed is used.
                     (mm/s, default: 0)
     --extruder N        The extruder to use (unless more specific extruder settings are specified). This
                     value overrides perimeter and infill extruders, but not the support extruders.
     --extruder-colour ABCD
                     This is only used in Slic3r interface as a visual help. (default: "")
     --extruder-fan-offset
                     This offset wil be added to all fan values set in the filament properties. It
                     won't make them go higher than 100% nor lower than 0%. (%, default: 0%)
     --extruder-offset   If your firmware doesn't handle the extruder displacement you need the G-code to
                     take it into account. This option lets you specify the displacement of each
                     extruder with respect to the first one. It expects positive coordinates (they
                     will be subtracted from the XY coordinate). (mm, default: 0x0)
     --extruder-temperature-offset N
                     This offset will be added to all extruder temperatures set in the filament
                     settings. Note that you should set 'M104
                     S{first_layer_temperature[initial_extruder] +
                     extruder_temperature_offset[initial_extruder]}' instead of 'M104
                     S[first_layer_temperature]' in the start_gcode (°C, default: 0)
     --extrusion-axis ABCD
                     Use this option to set the axis letter associated with your printer's extruder
                     (usually E but some printers use A). (default: E)
     --first-layer-extruder N
                     The extruder to use (unless more specific extruder settings are specified) for
                     the first layer.
     --infill-extruder N The extruder to use when printing infill. (default: 1)
     --lift-min N        When an extruder travels to an object (from the start position or from an object
                     to another), the nozzle height is guaranteed to be at least at this value. It's
                     made to ensure the nozzle won't hit clips or things you have on your bed. But be
                     careful to not put a clip in the 'convex shape' of an object. Set to 0 to
                     disable. (mm, default: 0)
     --max-volumetric-speed N
                     This experimental setting is used to set the maximum volumetric speed your
                     extruder supports. (mm³/s, default: 0)
     --min-layer-height  This is the lowest printable layer height for this extruder and limits the
                     resolution for variable layer height. Typical values are between 0.05 mm and 0.1
                     mm. Can be a % of the nozzle diameter. (mm or %, default: 5%)
     --nozzle-diameter N This is the diameter of your extruder nozzle (for example: 0.5, 0.35 etc.) (mm,
                     default: 0.4)
     --only-retract-when-crossing-perimeters
                     Disables retraction when the travel path does not exceed the upper layer's
                     perimeters (and thus any ooze will probably be invisible).
     --ooze-prevention   This option will drop the temperature of the inactive extruders to prevent
                     oozing. It will enable a tall skirt automatically and move extruders outside
                     such skirt when changing temperatures.
     --perimeter-extruder N
                     The extruder to use when printing perimeters and brim. First extruder is 1.
                     (default: 1)
     --retract-before-travel N
                     Retraction is not triggered when travel moves are shorter than this length. (mm,
                     default: 2)
     --retract-before-wipe
                     With bowden extruders, it may be wise to do some amount of quick retract before
                     doing the wipe movement. (%, default: 0%)
     --retract-layer-change
                     This flag enforces a retraction whenever a Z move is done (before it). (default:
                     0)
     --retract-length N  When retraction is triggered, filament is pulled back by the specified amount
                     (the length is measured on raw filament, before it enters the extruder). (mm
                     (zero to disable), default: 2)
     --retract-lift N    If you set this to a positive value, Z is quickly raised every time a retraction
                     is triggered. When using multiple extruders, only the setting for the first
                     extruder will be considered. (mm, default: 0)
     --retract-lift-above N
                     If you set this to a positive value, Z lift will only take place above the
                     specified absolute Z. You can tune this setting for skipping lift on the first
                     layers. (mm, default: 0)
     --retract-lift-below N
                     If you set this to a positive value, Z lift will only take place below the
                     specified absolute Z. You can tune this setting for limiting lift to the first
                     layers. (mm, default: 0)
     --retract-lift-first-layer
                     Select this option to enforce z-lift on the first layer. If this is enabled and
                     the lift value is 0 or deactivated, then every first move before each object
                     will be lifted by the first layer height. (default: 0)
     --retract-lift-top ABCD
                     Select this option to not use/enforce the z-lift on a top surface. (All
                     surfaces, Not on top, Only on top; default: "All surfaces")
     --retract-speed N   The speed for retractions (this only applies to the extruder motor). (mm/s,
                     default: 40)
     --seam-gap          To avoid visible seam, the extrusion can be stoppped a bit before the end of the
                     loop. Can be a mm or a % of the current extruder diameter. (mm or %, default:
                     15%)
     --solid-infill-extruder N
                     The extruder to use when printing solid infill. (default: 1)
     --support-material-extruder N
                     The extruder to use when printing support material (1+, 0 to use the current
                     extruder to minimize tool changes). (default: 0)
     --support-material-interface-extruder N
                     The extruder to use when printing support material interface (1+, 0 to use the
                     current extruder to minimize tool changes). This affects raft too. (default: 0)
     --tool-name ABCD    Only used for Klipper, where you can name the extruder. If not set, will be
                     'extruderX' with 'X' replaced by the extruder number. (default: )
     --wipe              This flag will move the nozzle while retracting to minimize the possible blob on
                     leaky extruders. (default: 0)
     --wipe-extra-perimeter N
                     When the external perimeter loop extrusion ends, a wipe is done, going slightly
                     inside the print. The number in this settting increases the wipe by moving the
                     nozzle along the loop again before the final wipe. (mm, default: 0)
     --wipe-speed N      Speed in mm/s of the wipe. If it's faster, it will try to go further away, as
                     the wipe time is set by ( 100% - 'retract before wipe') * 'retaction length' /
                     'retraction speed'. If set to zero, the travel speed is used. (default: 0)

#### Options de sortie
     --complete-objects  When printing multiple objects or copies, this feature will complete each object
                     before moving onto next one (and starting it from its bottom layer). This
                     feature is useful to avoid the risk of ruined prints. Slic3r should warn and
                     prevent you from extruder collisions, but beware.
     --complete-objects-one-brim
                     When using 'Complete individual objects', the default behavior is to draw the
                     brim at the beginning of each object. if you prefer to have more place for you
                     objects, you can print all the brims at the beginning, so ther is less problem
                     with collision.
     --complete-objects-one-skirt
                     When using 'Complete individual objects', the default behavior is to draw the
                     skirt around each object. if you prefer to have only one skirt for the whole
                     plater, use this option.
     --complete-objects-sort
                     When printing multiple objects or copies on after another, this will help you to
                     choose how it's ordered. Object will sort them by the order of the right panel.
                     Lowest Y will sort them by their lowest Y point. Useful for printers with a
                     X-bar. Lowest Z will sort them by their height, useful for delta printers.
                     (object, lowy, lowz; default: object)
     --duplicate-distance N
                     Default distance used for the auto-arrange feature of the plater. Set to 0 to
                     use the last value instead. (mm, default: 6)
     --extruder-clearance-height N
                     Set this to the vertical distance between your nozzle tip and (usually) the X
                     carriage rods. In other words, this is the height of the clearance cylinder
                     around your extruder, and it represents the maximum depth the extruder can peek
                     before colliding with other printed objects. (mm, default: 20)
     --extruder-clearance-radius N
                     Set this to the clearance radius around your extruder. If the extruder is not
                     centered, choose the largest value for safety. This setting is used to check for
                     collisions and to display the graphical preview in the plater. Set zero to
                     disable clearance checking. (mm, default: 20)
     --fan-percentage    Set this if your printer uses control values from 0-100 instead of 0-255.
     --gcode-comments    Enable this to get a commented G-code file, with each line explained by
                     descriptive text. If you print from an SD card, the additional weight of the
                     file could make your firmware slow down.
     --gcode-filename-illegal-char ABCD
                     All characters that are written here will be replaced by "_" when writing the
                     gcode file name. If the first charater is "[" or "(", then this field will be
                     considered as a regexp (enter "[^a-zA-Z]" to only use ascii char).
     --gcode-label-objects
                     Enable this to add comments into the G-Code labeling print moves with what
                     object they belong to, which is useful for the Octoprint CancelObject plugin.
                     This settings is NOT compatible with Single Extruder Multi Material setup and
                     Wipe into Object / Wipe into Infill.
     --gcode-precision-e N
                     Choose how many digits after the dot for extruder moves. (default: 5)
     --gcode-precision-xyz N
                     Choose how many digits after the dot for xyz coordinates. (default: 3)
     --output-filename-format ABCD
                     You can use all configuration options as variables inside this template. For
                     example: [layer_height], [fill_density] etc. You can also use [timestamp],
                     [year], [month], [day], [hour], [minute], [second], [version], [input_filename],
                     [input_filename_base]. (default: [input_filename_base].gcode)

#### Notes
     --filament-notes ABCD
                     You can put your notes regarding the filament here. (default: "")
     --notes ABCD        Here you can put your personal notes. This text will be added to the G-code
                     header comments.
     --printer-notes ABCD
                     You can put your notes regarding the printer here.

#### Filament
     --bed-temperature N Bed temperature for layers after the first one. Set this to zero to disable bed
                     temperature control commands in the output. (°C, default: 0)
     --extrusion-multiplier N
                     This factor changes the amount of flow proportionally. You may need to tweak
                     this setting to get nice surface finish and correct single wall widths. Usual
                     values are between 0.9 and 1.1. If you think you need to change this more, check
                     filament diameter and your firmware E steps. (default: 1)
     --filament-colour ABCD
                     This is only used in the Slic3r interface as a visual help. (default: #29B2B2)
     --filament-cost N   Enter your filament cost per kg here. This is only for statistical information.
                     (money/kg, default: 0)
     --filament-density N
                     Enter your filament density here. This is only for statistical information. A
                     decent way is to weigh a known length of filament and compute the ratio of the
                     length to volume. Better is to calculate the volume directly through
                     displacement. (g/cm³, default: 0)
     --filament-max-speed N
                     Maximum speed allowed for this filament. Limits the maximum speed of a print to
                     the minimum of the print speed and the filament speed. Set to zero for no limit.
                     (mm/s, default: 0)
     --filament-max-volumetric-speed N
                     Maximum volumetric speed allowed for this filament. Limits the maximum
                     volumetric speed of a print to the minimum of print and filament volumetric
                     speed. Set to zero for no limit. (mm³/s, default: 0)
     --filament-soluble  Soluble material is most likely used for a soluble support. (default: 0)
     --filament-spool-weight N
                     Enter weight of the empty filament spool. One may weigh a partially consumed
                     filament spool before printing and one may compare the measured weight with the
                     calculated weight of the filament with the spool to find out whether the amount
                     of filament on the spool is sufficient to finish the print. (g, default: 0)
     --filament-type ABCD
                     The filament material type for use in custom G-codes. (PLA, PET, ABS, ASA, FLEX,
                     HIPS, EDGE, NGEN, NYLON, PVA, PC, PP, PEI, PEEK, PEKK, POM, PSU, PVDF, SCAFF,
                     other0, other1, other2, other3, other4, other5, other6, other7, other8, other9;
                     default: PLA)
     --first-layer-bed-temperature N
                     Heated build plate temperature for the first layer. Set this to zero to disable
                     bed temperature control commands in the output. (°C, default: 0)
     --first-layer-temperature N
                     Extruder nozzle temperature for first layer. If you want to control temperature
                     manually during print, set this to zero to disable temperature control commands
                     in the output file. (°C, default: 200)
     --print-extrusion-multiplier
                     This factor changes the amount of flow proportionally. You may need to tweak
                     this setting to get nice surface finish and correct single wall widths. Usual
                     values are between 90% and 110%. If you think you need to change this more,
                     check filament diameter and your firmware E steps. This print setting is
                     multiplied against the extrusion_multiplier from the filament tab. Its only
                     purpose is to offer the same functionality but on a per-object basis. (%,
                     default: 100%)
     --print-retract-length N
                     Override the retract_length setting from the printer config. Used for
                     calibration. Set negative to disable (default: -1)
     --print-retract-lift N
                     Set the new lift-z value for this override. 0 will disable the z-lift. -& to
                     disable. May only work on Height range modifiers. (mm, default: -1)
     --print-temperature N
                     Override the temperature of the extruder. Avoid making too many changes, it
                     won't stop for cooling/heating. 0 to disable. May only work on Height range
                     modifiers. (default: 0)
     --temperature N     Extruder nozzle temperature for layers after the first one. Set this to zero to
                     disable temperature control commands in the output G-code. (°C, default: 200)

#### Refroidissement
     --bridge-fan-speed N
                     This fan speed is enforced during bridges and overhangs. It won't slow down the
                     fan if it's currently running at a higher speed. Set to -1 to disable this
                     override. Can only be overriden by disable_fan_first_layers. (%, default: 100)
     --bridge-internal-fan-speed N
                     This fan speed is enforced during all infill bridges. It won't slow down the fan
                     if it's currently running at a higher speed. Set to 1 to follow default speed.
                     Set to -1 to disable this override (internal bridges will use Bridges fan
                     speed). Can only be overriden by disable_fan_first_layers. (%, default: -1)
     --chamber-temperature N
                     Chamber temperature. Note that this setting doesn't do anything, but you can
                     access it in Start G-code, Tool change G-code and the other ones, like for other
                     temperature settings. (°C, default: 0)
     --cooling           This flag enables the automatic cooling logic that adjusts print speed and fan
                     speed according to layer printing time. (default: 1)
     --disable-fan-first-layers N
                     You can set this to a positive value to disable fan at all during the first
                     layers, so that it does not make adhesion worse. (layers, default: 1)
     --fan-always-on     If this is enabled, fan will continuously run at base speed if no other setting
                     overrides that speed. Useful for PLA, harmful for ABS. (default: 1)
     --fan-below-layer-time N
                     If layer print time is estimated below this number of seconds, fan will be
                     enabled and its speed will be calculated by interpolating the default and
                     maximum speeds. Set zero to disable. (approximate seconds, default: 60)
     --max-fan-speed N   This setting represents the maximum speed of your fan, used when the layer print
                     time is Very short. (%, default: 100)
     --min-fan-speed N   This setting represents the base fan speed this filament needs, or at least the
                     minimum PWM your fan needs to work. (%, default: 35)
     --slowdown-below-layer-time N
                     If layer print time is estimated below this number of seconds, print moves speed
                     will be scaled down to extend duration to this value, if possible. Set zero to
                     disable. (approximate seconds, default: 5)
     --top-fan-speed N   This fan speed is enforced during all top fills. Set to 1 to disable the fan.
                     Set to -1 to disable this override. Can only be overriden by
                     disable_fan_first_layers. (%, default: -1)

#### Code G personnalisé
     --before-layer-gcode ABCD
                     This custom code is inserted at every layer change, right before the Z move.
                     Note that you can use placeholder variables for all Slic3r settings as well as
                     [layer_num] and [layer_z].
     --between-objects-gcode ABCD
                     This code is inserted between objects when using sequential printing. By default
                     extruder and bed temperature are reset using non-wait command; however if M104,
                     M109, M140 or M190 are detected in this custom code, Slic3r will not add
                     temperature commands. Note that you can use placeholder variables for all Slic3r
                     settings, so you can put a "M109 S[first_layer_temperature]" command wherever
                     you want.
     --end-filament-gcode ABCD
                     This end procedure is inserted at the end of the output file, before the printer
                     end gcode (and before any toolchange from this filament in case of multimaterial
                     printers). Note that you can use placeholder variables for all Slic3r settings.
                     If you have multiple extruders, the gcode is processed in extruder order.
                     (default: "; Filament-specific end gcode \n;END gcode for filament\n")
     --end-gcode ABCD    This end procedure is inserted at the end of the output file. Note that you can
                     use placeholder variables for all Slic3r settings. (default: M104 S0 ; turn off
                     temperature\nG28 X0 ; home X axis\nM84 ; disable motors\n)
     --feature-gcode ABCD
                     This custom code is inserted at every extrusion type change.Note that you can
                     use placeholder variables for all Slic3r settings as well as
                     [last_extrusion_role], [extrusion_role], [layer_num] and [layer_z]. The
                     'extrusion_role' strings can take these string values: { Perimeter,
                     ExternalPerimeter, OverhangPerimeter, InternalInfill, SolidInfill,
                     TopSolidInfill, BridgeInfill, GapFill, Skirt, SupportMaterial,
                     SupportMaterialInterface, WipeTower, Mixed }. Mixed is only used when the role
                     of the extrusion is not unique, not exactly inside another category or not
                     known.
     --after-layer-gcode ABCD, --layer-gcode ABCD
                     This custom code is inserted at every layer change, right after the Z move and
                     before the extruder moves to the first layer point. Note that you can use
                     placeholder variables for all Slic3r settings as well as [layer_num] and
                     [layer_z].
     --post-process ABCD If you want to process the output G-code through custom scripts, just list their
                     absolute paths here. Separate multiple scripts with a semicolon. Scripts will be
                     passed the absolute path to the G-code file as the first argument, and they can
                     access the Slic3r config settings by reading environment variables. (default: )
     --start-filament-gcode ABCD
                     This start procedure is inserted at the beginning, after any printer start gcode
                     (and after any toolchange to this filament in case of multi-material printers).
                     This is used to override settings for a specific filament. If Slic3r detects
                     M104, M109, M140 or M190 in your custom codes, such commands will not be
                     prepended automatically so you're free to customize the order of heating
                     commands and other custom actions. Note that you can use placeholder variables
                     for all Slic3r settings, so you can put a "M109 S[first_layer_temperature]"
                     command wherever you want. If you have multiple extruders, the gcode is
                     processed in extruder order. (default: "; Filament gcode\n")
     --start-gcode ABCD  This start procedure is inserted at the beginning, after bed has reached the
                     target temperature and extruder has just started heating, but before extruder
                     has finished heating. If Slic3r detects M104 or M190 in your custom codes, such
                     commands will not be prepended automatically so you're free to customize the
                     order of heating commands and other custom actions. Note that you can use
                     placeholder variables for all Slic3r settings, so you can put a "M109
                     S[first_layer_temperature]" command wherever you want. placeholders:
                     initial_extruder, total_layer_count, has_wipe_tower,
                     has_single_extruder_multi_material_priming, total_toolchanges,
                     bounding_box[minx,miny,maxx,maxy] (default: G28 ; home all axes\nG1 Z5 F5000 ;
                     lift nozzle\n)
     --start-gcode-manual
                     Ensure that the slicer won't add heating, fan, extruder... commands before or
                     just after your start-gcode.If set to true, you have to write a good and
                     complete start_gcode, as no checks are made anymore.
     --toolchange-gcode ABCD
                     This custom code is inserted at every extruder change. If you don't leave this
                     empty, you are expected to take care of the toolchange yourself - Slic3r will
                     not output any other G-code to change the filament. You can use placeholder
                     variables for all Slic3r settings as well as [previous_extruder] and
                     [next_extruder], so e.g. the standard toolchange command can be scripted as
                     T[next_extruder].!! Warning !!: if any character is written here, Slic3r won't
                     output any toochange command by itself.

#### Generale
     --gcode-flavor      Some G/M-code commands, including temperature control and others, are not
                     universal. Set this option to your printer's firmware to get a compatible
                     output. The "No extrusion" flavor prevents Slic3r from exporting any extrusion
                     value at all. (reprapfirmware, repetier, teacup, makerware, marlin, klipper,
                     sailfish, mach3, machinekit, smoothie, sprinter, lerdge, no-extrusion; default:
                     marlin)
     --high-current-on-filament-swap
                     It may be beneficial to increase the extruder motor current during the filament
                     exchange sequence to allow for rapid ramming feed rates and to overcome
                     resistance when loading a filament with an ugly shaped tip.
     --host-type         Slic3r can upload G-code files to a printer host. This field must contain the
                     kind of the host. (prusalink, octoprint, duet, flashair, astrobox, repetier,
                     klipper; default: octoprint)
     --max-layer-height  This is the highest printable layer height for this extruder, used to cap the
                     variable layer height and support layer height. Maximum recommended layer height
                     is 75% of the extrusion width to achieve reasonable inter-layer adhesion. Can be
                     a % of the nozzle diameter. If set to 0, layer height is limited to 75% of the
                     nozzle diameter. (mm or %, default: 75%)
     --use-firmware-retraction
                     This experimental setting uses G10 and G11 commands to have the firmware handle
                     the retraction. This is only supported in recent Marlin.
     --use-relative-e-distances
                     If your firmware requires relative E values, check this, otherwise leave it
                     unchecked. Most firmwares use absolute values.
     --use-volumetric-e  This experimental setting uses outputs the E values in cubic millimeters instead
                     of linear millimeters. If your firmware doesn't already know filament
                     diameter(s), you can put commands like 'M200 D[filament_diameter_0] T0' in your
                     start G-code in order to turn volumetric mode on and use the filament diameter
                     associated to the filament selected in Slic3r. This is only supported in recent
                     Marlin.
     --variable-layer-height
                     Some printers or printer setups may have difficulties printing with a variable
                     layer height. Enabled by default.
     --wipe-tower        Multi material printers may need to prime or purge extruders on tool changes.
                     Extrude the excess material into the wipe tower.
     --z-offset N        This value will be added (or subtracted) from all the Z coordinates in the
                     output G-code. It is used to compensate for bad Z endstop position: for example,
                     if your endstop zero actually leaves the nozzle 0.3mm far from the print bed,
                     set this to -0.3 (or fix your endstop). (mm, default: 0)

#### Limites de la machine
     --machine-limits-usage
                     How to apply the Machine Limits. * In every case, they will be used as
                     safeguards: Even if you use a print profile that sets an acceleration of 5000,
                     if in your machine limits the acceleration is 4000, the outputted gcode will use
                     the 4000 limit. * You can also use it as a safeguard and to have a better
                     printing time estimate. * You can also use it as a safeguard, to have a better
                     printing time estimate and emit the limits at the begining of the gcode file,
                     with M201 M202 M203 M204 and M205 commands. If you want only to write a sub-set,
                     choose the 'for time estimate' option and write your own gcodes in the custom
                     gcode section. (emit_to_gcode, time_estimate_only, limits, ignore; default:
                     time_estimate_only)
     --machine-max-acceleration-e N
                     Maximum acceleration of the E axis (mm/s², default: 10000,5000)
     --machine-max-acceleration-extruding N
                     Maximum acceleration when extruding (M204 P) (mm/s², default: 1500,1250)
     --machine-max-acceleration-retracting N
                     Maximum acceleration when retracting (M204 R) (mm/s², default: 1500,1250)
     --machine-max-acceleration-travel N
                         Maximum acceleration when travelling (M204 T) (mm/s², default: 1500,1250)
     --machine-max-acceleration-x N
                     Maximum acceleration of the X axis (mm/s², default: 9000,1000)
     --machine-max-acceleration-y N
                         Maximum acceleration of the Y axis (mm/s², default: 9000,1000)
     --machine-max-acceleration-z N
                         Maximum acceleration of the Z axis (mm/s², default: 500,200)
     --machine-max-feedrate-e N
                         Maximum feedrate of the E axis (mm/s, default: 120,120)
     --machine-max-feedrate-x N
                         Maximum feedrate of the X axis (mm/s, default: 500,200)
     --machine-max-feedrate-y N
                         Maximum feedrate of the Y axis (mm/s, default: 500,200)
     --machine-max-feedrate-z N
                         Maximum feedrate of the Z axis (mm/s, default: 12,12)
     --machine-max-jerk-e N
                         Maximum jerk of the E axis (mm/s, default: 2.5,2.5)
     --machine-max-jerk-x N
                         Maximum jerk of the X axis (mm/s, default: 10,10)
     --machine-max-jerk-y N
                         Maximum jerk of the Y axis (mm/s, default: 10,10)
     --machine-max-jerk-z N
                         Maximum jerk of the Z axis (mm/s, default: 0.2,0.4)
     --machine-min-extruding-rate N
                         Minimum feedrate when extruding (M205 S) (mm/s, default: 0,0)
     --machine-min-travel-rate N
                         Minimum travel feedrate (M205 T) (mm/s, default: 0,0)

#### Configuration d'une extrudeuse unique MM
     --cooling-tube-length N
                     Length of the cooling tube to limit space for cooling moves inside it. (mm,
                     default: 5)
     --cooling-tube-retraction N
                         Distance of the center-point of the cooling tube from the extruder tip. (mm,
                         default: 91.5)
     --single-extruder-multi-material
                         The printer multiplexes filaments into a single hot end.
     --single-extruder-multi-material-priming
                         If enabled, all printing extruders will be primed at the front edge of the print
                         bed at the start of the print.
     --wipe-tower-no-sparse-layers
                         If enabled, the wipe tower will not be printed on layers with no toolchanges. On
                         layers with a toolchange, extruder will travel downward to print the wipe tower.
                         User is responsible for ensuring there is no collision with the print.

#### Firmware
     --fan-kickstart N   Add a M106 S255 (max speed for fan) for this amount of seconds before going down
                         to the desired speed to kick-start the cooling fan. This value is used for a
                         0->100% speedup, it will go down if the delta is lower. Set to 0 to deactivate.
                         (s, default: 0)
     --fan-speedup-overhangs
                         Will only take into account the delay for the cooling of overhangs.
     --fan-speedup-time N
                         Move the fan start in the past by at least this delay (in seconds, you can use
                         decimals). It assumes infinite acceleration for this time estimation, and will
                         only take into account G1 and G0 moves. It won't move fan comands from custom
                         gcodes (they act as a sort of 'barrier'). It won't move fan comands into the
                         start gcode if the 'only custom start gcode' is activated. Use 0 to deactivate.
                         (s, default: 0)
     --remaining-times   Emit something at 1 minute intervals into the G-code to let the firmware show
                         accurate remaining time.
     --remaining-times-type
                         M73: Emit M73 P[percent printed] R[remaining time in minutes] at 1 minute
                         intervals into the G-code to let the firmware show accurate remaining time. As
                         of now only the Prusa i3 MK3 firmware recognizes M73. Also the i3 MK3 firmware
                         supports M73 Qxx Sxx for the silent mode. M117: Send a command to display a
                         message to the printer, this is 'Time Left .h..m..s'. (m117, m73; default: m73)
     --silent-mode       The firmware supports stealth mode
     --time-estimation-compensation
                         This setting allows you to modify the time estimation by a % amount. As Slic3r
                         only uses the Marlin algorithm, it's not precise enough if another firmware is
                         used. (%, default: 100%)

#### Options d'essuyage
     --wipe-into-infill  Purging after toolchange will be done inside this object's infills. This lowers
                         the amount of waste but may result in longer print time due to additional travel
                         moves.
     --wipe-into-objects Object will be used to purge the nozzle after a toolchange to save material that
                         would otherwise end up in the wipe tower and decrease print time. Colours of the
                         objects will be mixed as a result.


Page suivante [Mode console pour impression SLA](mode_console_sla.md) 

[Retour Page principale](../superslicer.md)