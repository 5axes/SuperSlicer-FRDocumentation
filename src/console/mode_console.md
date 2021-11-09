# Lancement de SuperSlicer en mode Console

Version : SuperSlicer_2.3.57.5 based on Slic3r (with GUI support)
https://github.com/supermerill/SuperSlicer

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
 --help, -h          Show this help.
 --help-fff          Show the full list of print/G-code configuration options.
 --help-sla          Show the full list of SLA print configuration options.
 --info              Write information about the model to the console.
 --save ABCD         Save configuration to the specified file.
 --slice, -s         Slice the model as FFF or SLA based on the printer_technology configuration  value.

### Options de transformation:
 --align-xy X,Y      Align the model to the given point.
 --center X,Y        Center the print around the given center.
 --cut N             Cut model at the given Z.
 --dont-arrange      Do not rearrange the given models before merging and keep their original XY  coordinates.
 --duplicate N       Multiply copies by this factor.
 --duplicate-grid X,Y        Multiply copies by creating a grid.
 --merge, -m         Arrange the supplied models in a plate and merge them in a single model in order  to perform actions once.
 --repair            Try to repair any non-manifold meshes (this option is implicitly added whenever  we need to slice the model to perform the requested action).
 --rotate N           Rotation angle around the Z axis in degrees.
 --rotate-x N        Rotation angle around the X axis in degrees.
 --rotate-y N        Rotation angle around the Y axis in degrees.
 --scale N             Scaling factor or percentage.
 --scale-to-fit X,Y,Z        Scale to fit the given volume.
 --split             Detect unconnected parts in the given model(s) and split them into separate objects.

### Autres options:
 --config-compatibility
                     This version of Slic3r may not understand configurations produced by newest Slic3r versions. For example, newer Slic3r may extend the list of supported  firmware flavors. One may decide to bail out or to substitute an unknown value  with a default silently or verbosely. (disable, enable, enable_silent; default:  enable)
 --datadir ABCD      Load and store settings at the given directory. This is useful for maintaining  different profiles or including configurations from a network storage.
 --ignore-nonexistent-config
                     Do not fail if a file supplied to --load does not exist.
 --load ABCD         Load configuration from the specified file. It can be used more than once to  load options from multiple files.
 --loglevel N        Sets logging sensitivity. 0:fatal, 1:error, 2:warning, 3:info, 4:debug, 5:trace
                     For example. loglevel=2 logs fatal, error and warning level messages.
 --output ABCD, -o ABCD
                     The file where the output will be written (if not specified, it will be based on    the input file).
 --single-instance   If enabled, the command line arguments are sent to an existing instance of GUI  Slic3r, or an existing Slic3r window is activated. Overrides the  "single_instance" configuration value from application preferences.
 --sw-renderer       Render with a software renderer. The bundled MESA software renderer is loaded  instead of the default OpenGL driver.

Les options d'impression sont traitées dans l'ordre suivant:
	1) Configuration des clés à partir de la ligne de commande, par exemple --fill-pattern=stars (priorité la plus élevée, écrase tout ce qui est en dessous)
	2) Fichiers de configuration chargés avec --load
	3) Valeurs de configuration chargées à partir de fichiers amf ou 3mf

Exécuter --help-fff / --help-sla pour voir la liste complète des options d'impressions.


Page suivante [Mode console pour impression FDM](mode_console_fff.md) 

[Retour Page principale](../superslicer.md)
