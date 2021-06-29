#!/bin/sh


kubectl get certificate --namespace kwikkoder

kubectl describe certificate --namespace kwikkoder 

kubectl get certificaterequest -n kwikkoder

kubectl describe certificaterequest -n kwikkoder

kubectl get clusterissuers -n kwikkoder

kubectl describe clusterissuer letsencrypt -n kwikkoder
