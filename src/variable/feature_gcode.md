# feature_gcode

* Technologie : FDM
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## G-Code après changement de couche

### Description

Ce code personnalisé est inséré à chaque changement de type d'extrusion.
Notez que vous pouvez utiliser des  [variables génériques](variable_list.md) de substitution pour tous les paramètres SuperSlicer, ainsi que pour [layer_num](layer_num.md), [layer_z](layer_z.md) et [extrusion_role](extrusion_role.md) pouvant prendre ces valeurs de chaîne:

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

Exemple de paramétrage :

    {if layer\_num <= 1 && extrusion\_role=~/.Skirt./}
    M205 X2 Y2
    M204 P100 T1500
    {elsif layer\_num <= 1 && extrusion\_role=~/.Perimeter./}
    M205 X2 Y2
    M204 P100 T1500
    {elsif layer\_num <= 1 && extrusion\_role=~/.ExternalPerimeter./}
    M205 X2 Y2
    M204 P100 T1500
    {elsif layer\_num <= 1 && extrusion\_role=~/.SupportMaterial./}
    M205 X3 Y3
    M204 P100 T1500
    {elsif layer\_num <= 1 && extrusion\_role=~/.SupportMaterialInterface./}
    M205 X3 Y3
    M204 P100 T1500
    {elsif layer_num <= 1 }
    M205 X5.00 Y5.00
    M204 P250 T1500
    {else}
    M205 X8.00 Y8.00
    M204 P1000 T1500
    {endif}


[Retour Liste variables](variable_list.md)