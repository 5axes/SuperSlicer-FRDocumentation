# feature_gcode

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : G-Code personnalisé
* Mode : Expert

## G-Code après changement de couche

### Description

Ce code personnalisé est inséré à chaque changement de type d'extrusion.
Notez que vous pouvez utiliser des variables de substitution pour tous les paramètres SuperSlicer, ainsi que pour [layer_num](layer_num.md), [layer_z](layer_z.md) et [extrusion_role](extrusion_role.md) pouvant prendre ces valeurs de chaîne:

- Perimeter
- ExternalPerimeter
- OverhangPerimeter
- InternalInfill
- SolidInfill
- TopSolidInfill
- BridgeInfill
- GapFill
- Skirt
- SupportMaterial
- SupportMaterialInterface
- WipeTower
- Mixed

Mixed n'est utilisé que lorsque le rôle de l'extrusion n'est pas unique, pas uniquement dans une catégorie ou n'est pas connu.


[Retour Liste variables](variable_list.md)