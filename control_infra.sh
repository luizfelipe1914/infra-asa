#!/bin/bash

function build()
{
    docker build -t dns:bind9 ./dns
    docker build -t nginx:debian-stable ./web1
    docker build -t apache2:debian-stable ./web2
}

function up()
{
    docker run -itd -p 0.0.0.0:53:53/udp -p 0.0.0.0:53:53/tcp --ip 172.17.0.2 --dns 172.17.0.2 --name ns.prova.asa.br dns:bind9
    docker run -itd  -p 0.0.0.0:80:80/tcp --ip 172.17.0.10 --dns 172.17.0.2 --name web1.prova.asa.br nginx:debian-stable
    docker run -itd  -p 0.0.0.0:8080:80/tcp --ip 172.17.0.20 --dns 172.17.0.2 --name web2.prova.asa.br apache2:debian-stable
}

function down()
{
    docker stop ns.prova.asa.br
    docker stop web1.prova.asa.br
    docker stop web2.prova.asa.br
}

case $1 in
    "build")
        build
    ;;

    "up")
        up
    ;;

    "down")
        down
    ;;

esac