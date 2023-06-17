# Remove everything
```
minikube delete --all
```

# Start minikube
```
minikube start
```

# List available addons
```
minikube addons list 
```

# enable following addons
```
- minikube addons enable volumesnapshots
- minikube addons enable csi-hostpath-driver
```

# disable default enabled addons
```
- minikube addons disable storage-provisioner
- minikube addons disable default-storageclass
- kubectl patch storageclass csi-hostpath-sc -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```

# Check the minikube profiles
```
- minikube  profile list
```

# start minikube with 2 nodes
```
- minikube start --nodes 2 -p multinode
```

# Get the list of Nodes
```
- kubectl get nodes
- minikube status -p multinode
```

# Get IP range for each node
```
kubectl get no <nodename> -o json | jq '.spec.podCIDR'
```

# Add node to cluster
```
minikube node add -p multinode
```

# start minikube with flannel
```
minikube start --nodes 2 -p seytech-flannel --network-plugin=cni --cni=flannel

```


# check volume snapshot class
```
kubectl get volumesnapshotclasses
```

# Create PVC to create PV dynamically.
Please inspect `./pods/pvc.yml` file
```
# To find the storageclass
- kubectl get storageClass

kubectl apply -f ./pods/pvc.yml 
```