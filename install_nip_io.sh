#!/bin/bash

# hyperauth.org 도메인 이름을 다른 이름으로 변경해서 사용 예) export HYPERAUTH=auth.tmaxcloudauth.org
#export HYPERAUTH=172.23.4.209:8443
#export SERVICE_TYPE=LoadBalancer
#export DEFAULT_TLS_TYPE=nip_io

make dir.build
make init.build
make init.apply 
sleep 10
make traefik.build 
make traefik.apply 
sleep 10
make tls.build 
make tls.apply
sleep 1
make jwt.build
make jwt.apply
sleep 1
make console.build 
make console.apply 
sleep 1
make ingressroute.build
make ingressroute.apply 
