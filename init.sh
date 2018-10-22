docker network create -d bridge hub

cd images/ubuntu18
docker build . -t myubuntu

cd -
cd images/nginx
docker build . -t nginx-ubuntu

cd -
cd images/php
docker build . -t php72-ubuntu

cd -
cd images/php-fpm-nginx
docker build . -t php-fpm-nginx-ubuntu

cd -
cd images/node
docker build . -t node-ubuntu

cd -
cd images/c
docker build . -t c-ubuntu

cd -
cd images/python
docker build . -t python-ubuntu
