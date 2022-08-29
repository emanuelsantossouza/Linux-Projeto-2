
#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upagrade -y
apt-get install apache2 -y

echo "Abaixando o descompactador"
apt-get install unzip -y

echo "Baixando o arquivo "
cd /tmp
wget https://github.com/emanuelsantossouza/Page_Instagram/archive/refs/heads/main.zip
unzip main.zip
cd Page_Instagram-main
cp -R * /var/www/html/


