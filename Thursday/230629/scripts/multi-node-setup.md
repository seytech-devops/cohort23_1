#  Create minikube with multiple node
```
minikube start --nodes 2
```

# Check the addons:
```
minikube addons list
```
# Enable following addons:
```
minikube addons enable volumesnapshots
minikube addons enable csi-hostpath-driver
```

# Add node to cluster
```
minikube node add
```

# Check the nodes
```
minikube node list 
kubectl get nodes -owide
```

# Enable Ingress Controller
```
minikube addons enable ingress
```