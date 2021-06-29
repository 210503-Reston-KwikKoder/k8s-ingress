1. ./setup.sh
    - creates the ingress controller

2. ./getip.sh
    - gets the cluster ip you need to put in dns-record-set.sh

3. ./dns-record-set.sh
    - add a record to the dns zone

4. ./cert-manager.sh
    - install the cert-manager on the cluster and applies cluster-issuer.yaml

