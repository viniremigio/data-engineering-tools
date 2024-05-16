# Kubernetes for Beginners

Resources from this [Course](https://www.udemy.com/course/learn-kubernetes/)

## POD
Instance of application that encapsulates the docker container
Deploy pods in a new node in cluster to scale up
A single POD can have multiple containers, like helper containers

### Commands

```
kubectl run nginx --image nginx # Create a new image downloaded from a hub
kubectl create -f pod-definition.yaml # Create from a file
kubectl apply -f pod-definition.yaml # Apply changes made into the YAML file 
kubectl get pods -o wide # for more detailed info
kubectl describe pod <mypod> # Describe a POD
```


### PODs YAML

To run the file above use `kubectl create -f pod-defnition.yaml`
```
apiVersion: v1
kind: Pod
metadata:
	name: myapp-pod
	labels:
		app: myapp
		type: front-end

spec:
	containers:
		- name: nginx-container
		  image: nginx
```		  


## Deployments

```
kubectl create -f deployment.yaml --record
kubectl get deployments
kubectl apply -f deployments.yml
kubectl rollout status deployment/myapp-deployment
kubectl rollout history deployment/myapp-deployment
kubectl rollout undo deployment/myapp-deployment
kubectl set image deploy frontend container-name=image
```

### Rollout Strategies
- Recreate
- Rolling Update (Default): creates another replica-set to replace the older one with oldest application revision
	- Support rollback by using undo


## Replica Set
Specified number of pods are guaranteed to run. Provides HA
It expands across multiple nodes

### Commands
```
kubectl create -f replica.yml
kubectl get replicaset
kubectl delete replicaset myapp-replica

kubectl replace -f replica.yml 
kubectl scale --replicas=6 -f replica.yml
```
