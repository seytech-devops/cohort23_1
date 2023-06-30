# How to list nodes by label only
```
kubectl get node -l <key>:<value> # example: ssd=true

# Pods 
kubectl get pods -l ssd=true
```

# How to deploy pod on specific Node
```
# Using the NodeSeletector, specifiying the labels. 

 spec:
    nodeSelector:
        ssd: "true"
```