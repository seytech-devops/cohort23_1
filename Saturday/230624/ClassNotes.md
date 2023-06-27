# Class Notes - 062423

# RECAP:
    - kubernetes services
        - is a Kubernetes manifest (object), responsible exposing the service to external
            - Service Types:
                1. Cluster IP 
                    - Exposes the Service on a cluster-internal IP. Choosing this value makes the Service only reachable from within the cluster. This is the default that is used if you don't explicitly specify a type for a Service. You can expose the Service to the public internet using an Ingress or a Gateway.
                2. NodePort
                    - Exposes the Service on each Node's IP at a static port (the NodePort). To make the node port available, Kubernetes sets up a cluster IP address, the same as if you had requested a Service of type: ClusterIP.
                3. LoadBalancer 
                    - Exposes the Service externally using an external load balancer. Kubernetes does not directly offer a load balancing component; you must provide one, or you can integrate your Kubernetes cluster with a cloud provider.
                4. ExternalName
                    - Maps the Service to the contents of the externalName field (for example, to the hostname api.foo.bar.example). The mapping configures your cluster's DNS server to return a CNAME record with that external hostname value. No proxying of any kind is set up.
    - kubernetes networking 


# Ingress 
- An API object that manages external access to the services in a cluster, typically HTTP.
- Ingress may provide load balancing, SSL termination and name-based virtual hosting.

    - round-robin type load balancer:
        - server1
        - server2
        - server3

In order ingress to work [Ingres Controller](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/) must be deployed and running on the Kubernetes cluster.



```
kubectl create ingress demo-nginx --class=nginx \
  --rule="demo.localdev.me/*=demo:80"

  kubectl port-forward service/kubernetes-bootcamp 8080:80
```