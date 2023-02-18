#! /bin/sh

read -p "Ваш e-mail: " EMAIL
read -p "Базовый домен, для которого будут созданы поддомены с сервисами: " HOST

PG_PASSWORD=`tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo ''`
REDIS_PASSWORD=`tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo ''`
TRANSMISSION_PASSWORD=`tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo ''`

echo "TZ=Europe/Moscow
EMAIL=${EMAIL}
HOST=${HOST}
PG_USER=docker
PG_PASSWORD=${PG_PASSWORD}
REDIS_PASSWORD=${REDIS_PASSWORD}
TRANSMISSION_USER=root
TRANSMISSION_PASSWORD=${TRANSMISSION_PASSWORD}" > .env
echo "Конфиг записан в файл .env"