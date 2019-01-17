#!/bin/bash
# hecho para el librocomprasv6 - portatil moneyless
# hecho el 9.2018
cp -r /home/xoldfusion/Downloads/openxava-6.0.1_librocomprasv5/workspace/librocomprasv6  librocomprasv6
cp /home/xoldfusion/Downloads/openxava-6.0.1_librocomprasv5/tomcat/conf/*.xml librocomprasv6/tomcatfeliz
cp *.sh librocomprasv6/gitfeliz
cp -r openshiftfeliz librocomprasv6/
cp -r pentaho_transformacion librocomprasv6/
# ya no lo hago mas porque esta separado por versiones
# rm -R librocomprasv6/jasperfeliz/*

# sigo limpiando los archivos de trabajo nada mas
rm -R jasperfeliz/*.*~
rm -R librocomprasv6/jasperfeliz/*.*~
cp -r jasperfeliz librocomprasv6/
cp -r tomcatfeliz librocomprasv6/
cp  amazon2017llave/*.sh librocomprasv6/amazon2017llave
rm *.*~
cd librocomprasv6
git add -A
git commit -a -m "debug de la model , librocompras.java"
git push -u origin master
