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

# Rolling Update
```
# How to create Rolling Update on a DaemonSet
kubectl apply -f ./pods/fluentd-daemonset.yaml

# How to check the Rolling Update status
kubectl rollout status ds/fluentd-elasticsearch -n kube-system
```


# RollBack 
```
# How to check the revisions
kubectl rollout history daemonset <daemonset-name>

# How to RollBack for privous version
kubectl rollout undo ds/fluentd-elasticsearch --to-revision=1 -n kube-system 
```