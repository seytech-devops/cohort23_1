# Monitoring

## Setup minikube cluser
```
# stops minikube cluster
minikube stop

# starts monitoring minikube cluster
minikube start -p monitoring
minikube profile list 
minikube profile monitoring

## add node 
minikube node add
```

## Helm
- Is a package manager for kubernetes
```
# To list release
helm list 

# To list repos
helm repo list 

# add repo 
helm repo add prometheus https://prometheus-community.github.io/helm-charts

```
## Promethues
- Open-source tool, and free. 
```
helm 
helm search hub prometheus
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo list 
helm repo update
helm install prometheus prometheus/prometheus
kubectl get all
kubectl get service
kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-ext
kubectl get service
minikube service prometheus-server-ext
```


## Grafana 
- open-source tool. 
```
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update 
helm install grafana grafana/grafana
helm list 
kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-np
kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo

k get secret --namespace default grafana -o yaml 
echo YWRtaW4= | openssl base64 -d ; echo 
minikube service grafana-np

https://grafana.com/grafana/dashboard
```