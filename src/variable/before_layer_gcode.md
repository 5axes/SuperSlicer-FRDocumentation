# before_layer_gcode

* Technologie : FDM / SLA
* Groupe : [Réglages de l'Imprimante](../printer_settings/printer_settings.md)
* Sous groupe : [G-Code personnalisé](../printer_settings/printer_settings.md#g-code-personnalisé)
* Mode : Expert

## G-Code avant changement de couche

### Description

Ce code personnalisé est inséré à chaque changement de couche, juste avant le mouvement en Z.

Notez que vous pouvez utiliser des variables génériques pour tous les réglages de SuperSlicer de même que [layer_num](layer_num.md) et [layer_z](layer_z.md).

Exemple de code utilisé pour définir une tour de température.

    {if layer_z < 10}M104 S265

    {elsif layer_z <17}M104 S260

    {elsif layer_z < 24}M104 S255

    {elsif layer_z < 31}M104 S250

    {elsif layer_z < 38}M104 S245

    {elsif layer_z < 45}M104 S240

    {endif}

[Retour Liste variables](variable_list.md)
