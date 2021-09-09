# SuperSlicer

![Version 2.3.56.7](./images/001.png)

[**Version 2.3.57.0**](overview.md)

   
Version 1.19 du 21/08/2021

# Table des matières

* [Préambule](overview.md)

* [A propos de SuperSlicer](about_superslicer/about_superslicer.md)
	* [Quelles sont les principales caractéristiques de SuperSlicer / PrusaSlicer / Slic3r ?](about_superslicer/about_superslicer.md#quelles-sont-les-principales-caractéristiques-de-superslicer--prusaSlicer--slic3r-) 
	* [Quelles sont les principales différences de SuperSlicer ?](about_superslicer/about_superslicer.md#quelles-sont-les-principales-différences-de-superslicer-)
	* [Les autres caractéristiques principales](about_superslicer/about_superslicer.md#les-autres-caractéristiques-principales)
	* [Développement](about_superslicer/about_superslicer.md#Développement)
	* [Licence et attribution](about_superslicer/about_superslicer.md#licence-et-attribution)

* [Installer SuperSlicer](install/install.md)
	* [Télécharger les versions](install/install.md#télécharger-les-versions)
	* [Installer SuperSlicer](install/install.md#installer)

* [Avoir du Support](getting-support.md)

* [Configuration](configuration/configuration.md)
	* [Assistant de Configuration](configuration/configuration.md#assistant-de-configuration)
	* [Instantanés de Configuration](configuration/configuration.md#instantanés-de-configuration)


* [Première impression avec SuperSlicer](first_print/first_print.md)
	* [Importation du modèle](first_print/first_print.md#importation-du-modèle)
	* [Orientation du modèle](first_print/first_print.md#orientation-du-modèle)
	* [Sélection de l'imprimante](first_print/first_print.md#sélection-de-limprimante)
	* [Sélection du matériau](first_print/first_print.md#sélection-du-matériau)
	* [Sélection d'un profil d'impression/d'une hauteur de couche](first_print/first_print.md#sélection-dun-profil-dimpressiondune-hauteur-de-couche)
	* [Supports](first_print/first_print.md#supports)
	* [Remplissage](first_print/first_print.md#remplissage)
	* [Bordure](first_print/first_print.md#bordure)
	* [Prévisualisation du G-code avant l'impression](first_print/first_print.md#Prévisualisation-du-gcode-avant-limpression)


* [Interface utilisateur](user_interface/user_interface.md)
	* [Présentation de l'interface utilisateur](user_interface/user_interface.md#présentation-de-linterface-utilisateur)
	* [Panneau de manipulation des objets](user_interface/user_interface.md#panneau-de-manipulation-des-objets)
	* [Liste des objets](user_interface/user_interface.md#liste-des-objets)
	* [Vue](user_interface/user_interface.md#vue)
	* [Sélectionner des modèles](user_interface/user_interface.md#sélectionner-des-modèles)
	* [Modes Simple, Avancé, Expert](user_interface/user_interface.md#modes-simple-avancé-expert)
	* [Aperçu des découpes](user_interface/user_interface.md#aperçu-des-découpes)
	* [Raccourcis clavier](user_interface/user_interface.md#raccourcis-clavier)
	* [Divers](user_interface/user_interface.md#divers)

* [Réglages des préférences du logiciel](user_interface/settings.md)

* [Exporter/importer](input_output/input_output.md)
	* [Exporter](input_output/input_output.md#exporter)
	* [Formats de fichiers pris en charge](input_output/input_output.md#formats-de-fichiers-pris-en-charge)
	* [Sauvegarder des projets](input_output/input_output.md#sauvegarder-des-projets)
	* [Exporter vers une carte SD/une clé USB](input_output/input_output.md#exporter-vers-une-carte-sdune-clé-USB)
	* [Import / Export des configurations](input_output/input_output.md#import--export-des-configurations)

* [Barre d'outils de gauche](left_toolbar/left_toolbar.md)
	* [Outils Déplacer, Pivoter et Redimensionner](left_toolbar/left_toolbar.md#outils-déplacer-pivoter-et-redimensionner)
	* [Outil d’orientation selon une Face](left_toolbar/left_toolbar.md#outil-dorientation-selon-une-face)
	* [Outil de coupe](left_toolbar/left_toolbar.md#outil-de-coupe)
	* [Peinture des supports](left_toolbar/left_toolbar.md#peinture-des-supports)
	* [Peinture des coutures](left_toolbar/left_toolbar.md#peinture-des-coutures)

* [Barre d’outils du haut](top_toolbar/top_toolbar.md)
	* [Outil d'agencement automatique](top_toolbar/top_toolbar.md#outil-dagencement-automatique)
	* [Annuler / Rétablir](top_toolbar/top_toolbar.md#annuler--rétablir)
	* [Copier / Coller](top_toolbar/top_toolbar.md#copier--coller)
	* [Instances](top_toolbar/top_toolbar.md#instances)
	* [Diviser en objets/pièces](top_toolbar/top_toolbar.md#diviser-en-objetspièce)
	* [Fonction de hauteur de couche variable](top_toolbar/top_toolbar.md#fonction-de-hauteur-de-couche-variable)
	* [Recherche](top_toolbar/top_toolbar.md#recherche)

* [Calibration](calibration/calibration.md)
	* [Calibration de l'imprimante](calibration/calibration.md#Calibration-de-limprimante)
	* [Calibration du filament](calibration/calibration.md#Calibration-du-filament)
	* [Calibration du logiciel](calibration/calibration.md#Calibration-du-logiciel)

* [Fenêtre de script FreePySCAD](script_freecad/script_freecad.md)
	* [Comment cela fonctionne](script_freecad/script_freecad.md#comment-cela-fonctionne)
	* [Comment écrire](script_freecad/script_freecad.md#comment-écrire)
	* [Comment écrire du code python](script_freecad/script_freecad.md#comment-écrire-du-code-python)
	* [Label](script_freecad/script_freecad.md#label)
	* [La fenêtre du script](script_freecad/script_freecad.md#la-fenêtre-du-script)
	* [raccourcis](script_freecad/script_freecad.md#raccourcis)

* [Réglages de l'impression](print_settings/print_settings.md)
	* [Périmètre et enveloppe](print_settings/print_settings.md#périmètre-et-enveloppe)
	* [Couche](print_settings/print_settings.md#couche)
	* [Remplissage](print_settings/print_settings.md#remplissage)
	* [Jupe et bordure](print_settings/print_settings.md#jupe-et-bordure)
	* [Support](print_settings/print_settings.md#support)
	* [Vitesse](print_settings/print_settings.md#vitesse)
	* [Largeur et Débit](print_settings/print_settings.md#largeur-et-débit)
	* [Extrudeurs multiples](print_settings/print_settings.md#extrudeurs-multiples)
	* [Options de sortie](print_settings/print_settings.md#options-de-sortie)
	* [Remarques](print_settings/print_settings.md#remarques)

* [Réglages du filament](filament_settings/filament_settings.md#filament-configuration)
	* [Filament](filament_settings/filament_settings.md#filament)
	* [Refroidissement](filament_settings/filament_settings.md#refroidissement)
	* [Multi-matériaux](filament_settings/filament_settings.md#multi-matériaux)
	* [Rétractions de Filament](filament_settings/filament_settings.md#rétractions-de-filament)
	* [G-code personnalisé](filament_settings/filament_settings.md#g-code-personnalisé)
	* [Remarques](filament_settings/filament_settings.md#remarques)
	* [Dépendances](filament_settings/filament_settings.md#dépendances)

* [Réglages de l'Imprimante](printer_settings/printer_settings.md)
	* [Textures de plateau SVG et PNG personnalisées](printer_settings/printer_settings.md#textures-de-plateau-svg-et-png-personnalisées)
	* [Général](printer_settings/printer_settings.md#Général)
	* [G-Code personnalisé](printer_settings/printer_settings.md#g-code-personnalisé)
	* [Limites de la machine](printer_settings/printer_settings.md#Limites-de-la-machine)
	* [Extrudeuse](printer_settings/printer_settings.md#extrudeuse)
	* [Milling](printer_settings/printer_settings.md#milling)
	* [Réglage MM pour extrudeuse unique](printer_settings/printer_settings.md#réglage-MM-pour-extrudeuse-unique)
	* [Création de profils pour différentes buses](printer_settings/printer_settings.md#création-de-profils-pour-différentes-buses)

* [Fonctionnalités avancées](advanced_functionality/advanced_functionality.md)
	* [Paramètres par modèle](advanced_functionality/advanced_functionality.md#paramètres-par-modèle)
	* [Changement de couleur](advanced_functionality/advanced_functionality.md#changement-de-couleur)
	* [Modificateurs](advanced_functionality/advanced_functionality.md#modificateurs)
	* [Recharger depuis le Disque](advanced_functionality/advanced_functionality.md#recharger-depuis-le-disque)
	* [Insérer une pause ou un G-code personnalisé à une couche](advanced_functionality/advanced_functionality.md#insérer-une-pause-ou-un-g-code-personnalisé-à-une-couche)
	* [Exporter les parcours d'outils au format OBJ](advanced_functionality/advanced_functionality.md#exporter-les-parcours-doutils-au-format-obj)

* [Découpage multi-matériaux](multimaterial/multimaterial.md)
	* [Importation d'un modèle multi-matériaux](multimaterial/multimaterial.md#importation-dun-modèle-multi-matériaux)
	* [Prévention des coulures](multimaterial/multimaterial.md#prévention-des-coulures)
	* [Attribution de couleurs (extrudeurs)](multimaterial/multimaterial.md#attribution-de-couleurs-extrudeurs)
	* [ColorPrint avec le MMU](multimaterial/multimaterial.md#tour-de-purge)
	* [Tour de purge](multimaterial/multimaterial.md#tour-de-purge)
	* [Volume de purge](multimaterial/multimaterial.md#volume-de-purge)

* [Découpage SLA](sla_printer/sla_printer.md)
	* [Objets géométriquement précis](sla_printer/sla_printer.md#objets-géométriquement-précis)
	* [Supports de type arborescent](sla_printer/sla_printer.md#supports-de-type-arborescent)
	* [Orientation d'un objet](sla_printer/sla_printer.md#orientation-dun-objet)
	* [Évidement](sla_printer/sla_printer.md#évidement)

* [Paramètres d'impression SLA](sla_printer/sla_parameters.md)
	* [Paramètres spécifiques SLA](sla_printer/sla_parameters.md#paramètres-spécifiques-SLA)
	* [Réglages de l'Impression](sla_printer/sla_parameters.md#réglages-de-limpression)
	* [Réglages Matériau](sla_printer/sla_parameters.md#réglages-matériau)
	* [Réglages de l'Imprimante](sla_printer/sla_parameters.md#réglages-de-limprimante)

* [Macros](macros/macros.md)
	* [Opérateurs](macros/macros.md#opérateurs)
	* [Fonctions](macros/macros.md#fonctions)
	* [Variables scalaires](macros/macros.md#variables-scalaires)
	* [Variables sous forme de tableau](macros/macros.md#variables-sous-forme-de-tableau) 
	* [Tableaux multidimensionnels](macros/macros.md#tableaux-multidimensionnels)
	* [Tour de température](macros/macros.md#tour-de-température)

* [SuperSlicer Liste des variables](variable/variable_list.md)

* [SuperSlicer Aperçu du G-Code](gcode_viewer/gcode_viewer.md)
    * [Trancheurs supportés](gcode_viewer/gcode_viewer.md#trancheurs-supportés) 
	* [Associer à l'extension de fichier .gcode](gcode_viewer/gcode_viewer.md#associer-à-lextension-de-fichier-gcode)
	* [Caractéristiques](gcode_viewer/gcode_viewer.md#caractéristiques)

* Tutoriels
    * [Correction d'un modèle non valide](tutorial/repairing-models.md) 
    * Contribuer sur github
    * Utilisation des buses de différents diamètres
    * [Créer et mettre à jour une traduction](tutorial/software_translation.md) 
    * [Ajout imprimante physique](tutorial/add_printer.md) 
    
* Dépannage
    * [Dépannage](troubleshooting/troubleshooting.md)
    * [Erreur dimension](troubleshooting/dimension-errors.md)

* [Largeur d'extrusion](advanced/flow-math.md)

* [Lexique](glossary/glossary.md)

