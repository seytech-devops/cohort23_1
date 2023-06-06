# Class Notes - 060423

# Recap
    - Create cluster
        - Using Minikube to Create a Cluster
    - Deploy/Create Pod (an Application)
        - Using kubectl to Create a Deployment
    
### What does Deployment do?
    - instructs Kubernetes how to create and update instances of your application. 
    - Once you've created a Deployment, the Kubernetes control plane schedules the application instances included in that Deployment to run on individual Nodes in the cluster.
    - Once the application instances are created, a Kubernetes Deployment controller continuously monitors those instances. 
    - If the Node hosting an instance goes down or is deleted, the Deployment controller replaces the instance with an instance on another Node in the cluster. 
    - This provides a self-healing mechanism to address machine failure or maintenance.

### Deploying first app on Kubernetes:
    - We can create and manage a Deployment by using the Kubernetes command line interface, kubectl. 
    - Kubectl uses the Kubernetes API to interact with the cluster.
    - When we create a Deployment, we need to specify the container image for your application and the number of replicas that we want to run. 
    - We can change that information later by updating our Deployment

### View the app
    - Pods that are running inside Kubernetes are running on a private, isolated network. 
    - By default they are visible from other pods and services within the same kubernetes cluster, but not outside that network. 
    - When we use kubectl, we're interacting through an API endpoint to communicate with our application.

### Every Kubernetes Node runs at least:
    - Kubelet, a process responsible for communication between the Kubernetes control plane and the Node
    - it manages the Pods and the containers running on a machine.
    - A container runtime (like Docker) responsible for pulling the container image from a registry, unpacking the container, and running the application.

### Most used troubleshoot steps:
    - kubectl get - list resources
    - kubectl describe - show detailed information about a resource
    - kubectl logs - print the logs from a container in a pod
    - kubectl exec - execute a command on a container in a pod