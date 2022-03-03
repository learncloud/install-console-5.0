#!/bin/bash

make init.delete
sleep 5
make traefik.delete
sleep 5
make tls.delete
sleep 1
make jwt.delete
sleep 1
make console.delete 
sleep 1
make ingressroute.delete
