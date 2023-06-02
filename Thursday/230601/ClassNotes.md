# Class Notes - 060123

# Introduction Kubernetes (k8s)

[Kubernetes Cheet Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

## Recap:
    - kubectl 
    - minikube
    - Pods
    - Lens

## Table Of Contents
### What is Kubernetes
    1. Orchestration tool to manage containers
### KUbernetes alternatives
    1. Docker Swarm
    2. Docker-compose 
### Kubernetes Architecture 
    1. Control Plane
    2. Worker Node
### Control Plane Components 
    1. kube-apiserver
    2. etcd
    3. kube-scheduler
    4. Kube Controller Manager
    5. Cloud Controller Manager (CCM)

#### Cloud Managed Kubernetes Solutions:
    1. AWS EKS
    2. GCP GKE
    3. Azure AKS

### Worker Node Components
    1. Kubelet 
    2. Kube proxy 
    3. Container Runtime (CRI)
        - Docker, containerd
### Kubernetes Cluster Addon Components
    1. CNI Plugin (Container Network Interface)
        - flannel, calico, cilium 
### Kubernetes Architecture FAQs
    1. What is main purpose of the Kubernetes control   plane?
    2. What is the purpose of the worker nodes in a Kubernetes cluster?
    3. How is the communication between the control plane and worker nodes secured in Kubernetes?
    4. What is the purpose of the `etcd` key-value store in Kubernetes?
---

## Install Tools 
    - kubectl 
    - kind (Kubernetes in Docker)
    - minikube 
        - is a ready single node kube cluster can be run on your local.
    - kubeadm
        - is a tool to setup/configure the kubernetes cluster.

### kubectl 
- is command line tool, used communicating with Kube cluster control plane using Kubernetes API.
- allows to run commands against Kubernetes cluster
- can be used to deploy applications
- inspcet and manage cluster resources
- view logs 

#### kubectl configuration
- looks for a file named *config* in the $HOME/.kube directory

#### kubectl syntax
```
kubectl [command] [TYPE] [NAME] [flags]
```
    - command: Specifies the operation to perform on resources
        - create, get, describe, delete
    - TYPE: specifies resource type
        - pod, ingress, deployment
    - NAME: Specifies name of the resource
        - example, test-pod
    flags: Specifies optional flags.

### kind
- lets to run Kubernetes on local computer.
- requires Docker to be installed and configured.

###  minikube
- lets to run Kubernetes on local computer.

### kubeadm 
- is used to create and manage Kubernetes cluster

---

## Install and Setup `kubectl`
- [install kubectl](https://kubernetes.io/docs/tasks/tools/)

---

## What is a Pod? 
- is a smallest object/unit in kubernetes
- can run one or more containers
- is a wrapper for containers

## Ways to create pods:
1. Using `kubectl` directly 
    ```
    kubectl run nginx --image=nginx
    ```

    1.1: How to get the yaml file of exsiting resource/object 
        ```
        kubectl get pod <name> -owide -o yaml 
        ```

2. Using a yaml manifest/definition file
    ```
    apiVersion: v1
    kind: Pod
    metadata:
    name: myapp
    spec:
    containers:
    - name: myapp
        image: nginx:1.14.2
        ports:
        - containerPort: 80
    ```

3. Workload resources that manage one or more Pods:
    - Deployment    
    - StatefulSet
    - DaemonSet
