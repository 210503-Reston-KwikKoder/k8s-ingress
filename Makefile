apply: 
	kubectl apply -f ./ingress.yml -n kwikkoder

secret:
	kubectl create secret generic competition-secret --from-file=./appsettings.json -n kwikkoder

doNOTrunTHIS:
	# kubectl delete deployment cert-manager -n kwikkoder;
	# helm uninstall cert-manager -n kwikkoder;
	# kubectl delete clusterissuer letsencrypt -n kwikkoder;
	 
