#!/bin/bash

#creator--Patxa

wifi_status=$(nmcli radio wifi) # Obtenemos el estado actual del wifi

if [ "$wifi_status" == "enabled" ]; then  # Si el wifi está activado, Desactivarlo
    nmcli radio wifi off 
    echo "Wi-fi Desactivado"
else
    nmcli radio wifi on     #sino, activarlo.
    echo "Wi-fi activado"
fi
