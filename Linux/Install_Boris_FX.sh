#!/bin/sh
# -------------------------------
# SCRIPT DE INSTALACAO DO BORIS FX
# CRIADO POR RAPHAEL MARIA
# EM 07 DE JANEIRO DE 2020
# VERSAO 01.00
# -------------------------------

cd
echo " Efetuando Download dos instaladores"
yum -y install wget
wget http://192.168.8.7/app/plugins/Boris/Mocha2020/MochaPro2020-7.0.2-69.ga4c281e9b481.x86_64.rpm

wget http://192.168.8.7/app/plugins/Boris/Sapphire2020/SapphireOFX-2020.000-1.0.x86_64.rpm
chmod -R 777 *.rpm

yum -y install MochaPro2020-7.0.2-69.ga4c281e9b481.x86_64.rpm
yum -y install SapphireOFX-2020.000-1.0.x86_64.rpm

echo "Efetuando download das Licenças"
rm -rf /etc/opt/isl/licences
rm -rf /etc/opt/bis

ln -s /etc/opt/isl /etc/opt/bis
ln -s /etc/opt/isl/licenses /etc/opt/isl/licences





