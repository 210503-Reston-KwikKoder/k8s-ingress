#!/bin/sh


az network dns record-set a add-record \
    --resource-group 210503-KwikKoder \
    --zone-name kwikkoder.com \
    --ipv4-address 20.69.69.228
