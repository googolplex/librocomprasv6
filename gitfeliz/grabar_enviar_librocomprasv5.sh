#!/bin/bash
# hecho para el librocomprasv5 - portatil moneyless
# hecho el 9.2018
cp -r /home/xoldfusion/Downloads/openxava-6.0.1_librocomprasv5/workspace/librocomprasv6  librocomprasv5
cp /home/xoldfusion/Downloads/openxava-6.0.1_librocomprasv5/tomcat/conf/*.xml librocomprasv5/tomcatfeliz
cp *.sh librocomprasv5/gitfeliz
cp -r openshiftfeliz librocomprasv5/
cp -r pentaho_transformacion librocomprasv5/
# ya no lo hago mas porque esta separado por versiones
# rm -R librocomprasv5/jasperfeliz/*

# sigo limpiando los archivos de trabajo nada mas
rm -R jarperfeliz/*.*~
rm -R librocomprasv5/jasperfeliz/*.*~
cp -r jasperfeliz librocomprasv5/
cp -r tomcatfeliz librocomprasv5/
cp  amazon2017llave/*.sh librocomprasv5/amazon2017llave
rm *.*~
cd librocomprasv5
git add -A
git commit -a -m "agrego el mapa de transferencia pentaho"
git push -u origin master
