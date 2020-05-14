#!/bin/bash
# License : GPLv3 or later

# code commune en argument
code_commune=$1

# on télécharge le zip qui correspond à la commune
wget -O $code_commune.zip https://cadastre.data.gouv.fr/bundler/pci-vecteur/communes/$code_commune/edigeo
unzip $code_commune.zip
rm $code_commune.zip

# on se déplace dans le dossier de la commune
cd $code_commune

# on extrait les feuilles
for archive in *.bz2; do
  tar -xf $archive
done
rm -f *.bz2

# on convertit en gpkg en assemblant les feuilles
for feuille_pci in *.THF; do
  ogr2ogr -append -f GPKG -a_srs EPSG:2154 ../$code_commune.gpkg $feuille_pci
done

cd ..
rm -Rf $code_commune
