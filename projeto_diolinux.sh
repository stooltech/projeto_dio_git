#!/bin/bash

echo "Criando Pastas de diretório..."

mkdir /Publico
mkdir /Adm
mkdir /Ven
mkdir /Sec

echo "Criando grupos de funcionários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários pessoais e adicionando aos respectivos grupos..."

useradd Carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Stool123)
useradd Maria -m -s /bin/bash  -G GRP_ADM -p $(openssl passwd -crypt Stool123)
useradd Joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt Stool123)
useradd Debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Stool123)
useradd Sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Stool123)
useradd	Roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt Stool123)
useradd Josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Stool123)
useradd Amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Stool123)
useradd Rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt Stool123)

echo "Adicionando permissões aos diretórios..."

chmod 777 /Publico
chmod 770 /Adm
chmod 770 /Ven
chmod 770 /Sec

echo "Adicionando proprietário as pastas de diretórios..."

chown root:GRP_ADM /Adm
chown root:GRP_VEN /Ven
chown root:GRP_SEC /Sec

echo "Finalizando Script"
