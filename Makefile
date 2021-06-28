apply: 
	kubectl apply -f ./ingress.yml -n kwikkoder

secret:
	kubectl create secret generic competition-secret --from-file=./appsettings.json -n kwikkoder