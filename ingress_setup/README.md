First Login to the az tool with your service principle

1. ./setup.sh
    - creates the ingress controller

2. ./getip.sh
    - gets the cluster ip you need to put in dns-record-set.sh

3. ./dns-record-set.sh (you may be able to skip this step if you set it up on the azure portal)
    - add a record to the dns zone

4. ./cert-manager.sh
    - install the cert-manager on the cluster

5. You must manually apply the clutser-issuer.yaml
    - kubectl apply -f cluster-issuer.yaml -n <namespace>

6. run checkcert.sh to check the status of your certificate.

7. You may also need to use cert.yml to create a place for your certificate.

