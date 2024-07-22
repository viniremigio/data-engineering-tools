# Create generic credentials
kubectl create secret generic mysql-secrets --from-literal=mysql-root-password=datahub
kubectl create secret generic neo4j-secrets --from-literal=neo4j-password=datahub

# Add helm repo
helm repo add datahub https://helm.datahubproject.io/

# Install pre-requisites
# Find definition here: https://github.com/acryldata/datahub-helm/blob/master/charts/prerequisites/values.yaml
helm install prerequisites datahub/datahub-prerequisites

# Deploy DataHub
helm install datahub datahub/datahub

# Check
kubectl get pods

# Expose frontend
kubectl port-forward <datahub-frontend pod name> 9002:9002