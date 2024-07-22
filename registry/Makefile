.PHONY: create/deployment create/service create/standalone start/standalone

create/deployment:
	kubectl create -f deployment.yaml
	
create/service:
	kubectl create -f service.yaml

create/standalone:
	./run-registry.sh &

start/standalone:
	docker start registry

expose:
	minikube ssh -- docker run -d -p 5001:5000 --restart=always --name registry registry:2 &