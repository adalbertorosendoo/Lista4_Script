#!/bin/bash

read -p "Digite o arquivo que contenha os IPS: " ip
echo ""
cat $ip | sed -r 's/[0-9]{1,3}(\.[0-9]{1,3}){3}/**CEN-SU-RA-DO!!**/g'

