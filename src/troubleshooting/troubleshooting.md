# Gestion des problèmes

## Oscillation Z 

Les ondulations dans les parois d'une impression peuvent être dues à une oscillation de l'axe Z.
Une analyse approfondie des causes potentielles est donnée par [whosawhatsis](https://twitter.com/whosawhatsis) dans son article "[Taxonomy of Z axis artifacts in extrusion-based 3d printing](https://www.evernote.com/shard/s211/client/snv?noteGuid=701c36c4-ddd5-4669-a482-953d8924c71d&noteKey=1ef992988295487c98c268dcdd2d687e&sn=https%3A%2F%2Fwww.evernote.com%2Fshard%2Fs211%2Fsh%2F701c36c4-ddd5-4669-a482-953d8924c71d%2F1ef992988295487c98c268dcdd2d687e&title=Taxonomy%2Bof%2BZ%2Baxis%2Bartifacts%2Bin%2Bextrusion-based%2B3d%2Bprinting)", cependant un point d'intérêt particulier pour les utilisateurs de SuperSlicer est l'oscillation causée par les pas du moteur qui ne correspondent pas au pas du filetage des filetage des tiges Z. Ce problème peut être résolu en s'assurant que le paramètre [Hauteur de la couche](../macros/layer_height.md) est un multiple de la longueur totale du pas.


[Retour Page principale](../superslicer.md)

