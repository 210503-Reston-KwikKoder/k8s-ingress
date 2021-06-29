#!/bin/sh

kubectl --namespace kwikkoder get services -o wide -w nginx-ingress-ingress-nginx-controller