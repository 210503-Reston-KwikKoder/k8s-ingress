# About
Many coders are bottlenecked by lackluster typing skills, we aim to provide these developers with a place to hone their abilities and improve themselves. KwikKoder allows users to test their speed and accuracy by typing plain english as well as code snippets from over 60 different programming languages. Users can see how they stand against others using our leaderboard. The leaderboard aggregates user statistics for each category or gives an overall ranking. Users can also compete against their friends in asynchronous competitions. We reward users with revapoints for improving their skills while providing them with eye catching graphs that show their progress over time. Live competitions complete with chat rooms are powered through websockets to give users a place to improve their speed with others. Also, the discussion forum lets users give tips and tricks to others on what helped them become a faster coder.

# Documentation + Kubernetes Setup Repository

CI/CD

The application is being deployed in a Microservice architecture(MSA). The application has five different services. One front end service made in Angular framework and  Four Backend services built on ASP.NET. Each service will have a dockerfile that will build an image to be run on a container.

For CI/CD the application will rely on Github actions, Docker Hub and Azure Kubernetes Service (AKS). When a new push is made to the main branch of a repository in github, github actions will build and test the application and store the results on sonar cloud for analysis. Then the actions will build an image with the proper tag and push the Image to Docker Hub. 

Then Helm is used to configure the deployment files in AKS. Once the Deployment files have been configured, there is a job in the github action that will call the helm in AKS to deploy the newly built image to be run on a container.


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


## Services Documentation:

kwikkoderrest.pdf contains all the documentation for backend services and the endpoints that each contains.