#  Create minikube with multiple node
```
minikube start --nodes 2
```

# Add 2 mores nodes to cluster
```
minikube node add

# Total should show 4 nodes including control-plane
minikube node list 
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

# Check the nodes
```
minikube node list 
kubectl get nodes -owide
```

# Enable Ingress Controller
```
minikube addons enable ingress
```

