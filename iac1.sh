#!/bin/bash

echo "Criando diretório..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd  carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM	
echo "User carlos criado."
useradd  maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "User maria criado."
useradd  joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
echo "User joao criado."


useradd  debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "User debora criado."
useradd  sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "User sebastiana criado."
useradd  roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo "User roberto criado."

useradd  josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "User josefina criado."
useradd  amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "User amanda criado."
useradd  rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo "User rogerio criado."

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Fim...."
 


	
