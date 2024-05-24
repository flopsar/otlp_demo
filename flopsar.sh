#!/bin/sh


ECOMM=`docker ps -q --filter "ancestor=flopsar/ecommerce"`
SRV=`docker ps -q --filter "ancestor=flopsar/server"`
echo "Flopsar server " $SRV
echo "Konakart " $ECOMM
IP=`docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $SRV`
echo "Adres IP serwera " $IP
