# Class Notes - 061523

## RECAP 
- Networking 

## Kubernetes Services, Load Balancing and Networking
- [Cluster Networking](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
- [Connecting Applications with Services](https://kubernetes.io/docs/tutorials/services/connect-applications-service/)
- [What is CNI](https://github.com/containernetworking/cni)
    - [Introduction to CNI](https://www.youtube.com/watch?v=YjjrQiJOyME)
    - [CNI deep dive](https://www.youtube.com/watch?v=zChkx-AB5Xc)

### Kubernetes Networking addresses four concerns:
    - Containers within a Pod use networking to communicate via loopback(127.0.0.1), localhost and port numbers.
        - This loopback networking allows containers within the Pod to communicate over the localhost network without the need for external network communication.
    - Cluster networking provides communication between different Pods (inter-Pod). 
    - The Service API lets you expose an application running in Pods to be reachable from outside your cluster.
        - Ingress provides extra functionality specifically for exposing HTTP applications, websites and APIs.
    - You can also use Services to publish services only for consumption inside your cluster.

### Inter-Pod communication
refers to the ability of Pods to communicate with each other across different nodes or within the same node. Kubernetes provides several mechanisms for achieving inter-Pod communication:

#### Services:
Services in Kubernetes provide a stable network endpoint for a group of Pods. They enable communication between Pods using a virtual IP address and a stable DNS name. Pods can communicate with other Pods by making requests to the Service's IP or DNS name. Services can be exposed internally within the cluster or externally to the outside world.

#### Cluster IP: 
A Cluster IP is a virtual IP address assigned to a Service. It allows Pods within the cluster to communicate with the Service. Each Service gets its own Cluster IP, and communication to the Service is load-balanced to the underlying Pods.

#### NodePort: 
NodePort is a type of Service that exposes the Service on a specific port on all the cluster's nodes. This allows external access to the Service by sending traffic to any node's IP address and the specified port. The traffic is then forwarded to the Service and load-balanced to the Pods.

#### LoadBalancer: 
A LoadBalancer Service exposes the Service externally using a cloud provider's load balancer. The cloud provider provisions a load balancer that distributes traffic to the Service's Pods. This enables external access to the Service from outside the cluster.

#### Ingress: 
Ingress is an API object that manages external access to Services within a cluster. It allows you to define routing rules for incoming traffic based on hostnames, paths, or other criteria. Ingress controllers handle incoming requests and route them to the appropriate Service.
