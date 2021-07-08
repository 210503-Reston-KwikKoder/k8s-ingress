# Documentation + Kubernetes Setup Repository

### ingress_setup
Contains some basic information for you to be able to setup an ingress on a k8s cluster

## Makefile
The Root of this repository has an ingress.yml file that defines all the endpoints that will lead to the different services deployed on the cluster. Changing this will require changing the paths of any service depending on that endpoint.

 - There is a makefile with the command to apply this ingress configuration to the ingress controller created in step one from ingress_setup
    - The command is `make apply`

 - There is another makefile command to create secrets from the contents of an appsettings.json file.
    - You will need to change this command for each secret you add to the cluster.
    - The deployment.yml files for each service reference the name of this secret in order for it to be mounted onto each pod in the cluster.


## Github secrets
You will need four organization secrets in total.
- AZURE_CREDENTIALS
    - This secret contains json values that allow github actions to interact with AKS.
    ```
    {
    "clientId": "",
    "clientSecret": "",
    "subscriptionId": "",
    "tenantId": ""
    }
    ```
- DOCKERHUB_TOKEN
    - Dockerhub account password

- DOCKERHUB_USERNAME
    - Dockerhub account username

- SONAR_TOKEN
    - Access token for sonar cloud
