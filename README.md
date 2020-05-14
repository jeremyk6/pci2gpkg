# pci2gpkg

Script BASH pour télécharger l'intégralité des feuilles du PCI vecteur d'une commune et les fusionner au format Geopackage.

# Dépendances

Nécessite les outils GDAL. Ceux-ci peuvent s'installer sous Debian ou Ubuntu à l'aide de la commande :

```bash
sudo apt install gdal-bin
```

# Utilisation

Pour télécharger une commune, rendre d'abord le script exécutable :

```bash
chmod +x pci2gpkg.sh
```

Puis lancer le script en passant le code commune en paramètre. Par exemple, pour la commune de [Guéret](https://fr.wikipedia.org/wiki/Gu%C3%A9ret) :

```bash
./pci2gpkg 23096
```

On obtient à la fin de l'exécution un fichier [code_commune].gpkg, facilement exploitable sous QGIS.
