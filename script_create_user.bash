#!/bin/bash

echo  "create folder..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo  "final folder..."

echo "create group..."

addgroup  GRP_ADM
addgroup  GRP_VEN
addgroup  GRP_SEC

echo "final group..."

echo "create users..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd carlos -e -G GRP_ADM

useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd maria -e -G GRP_ADM

useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd joao -e -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd debora -e -G GRP_VEN

useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd sebastiana -e -G GRP_VEN


useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd roberto -e -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd josefina -e -G GRP_SEC

useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd amanda -e -G GRP_SEC

useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -crypt Test123)
passwd rogerio -e -G GRP_SEC

echo "final users......"

echo  " start permission"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "final permission"
