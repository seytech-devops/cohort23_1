# Class Notes - 061723

# CIDR Calculator
[cidr calculatro](https://www.davidc.net/sites/default/subnets/subnets.html)

# RECAP
- Networking on Kubernetes
    - CNI (Container Network Interface):
        - Calico
        - [Flannel](https://github.com/kubernetes/minikube/blob/master/pkg/minikube/cni/flannel.yaml)
        - cilium
    - CNI:
        - Manages/responsible for managing the Kubernetes networking
            - (https://ronaknathani.com/blog/2020/08/how-a-kubernetes-pod-gets-an-ip-address/)


# Today's Topic
- Create cluster (multi-node cluster)
    - With CNI (Flannel) Deployed
- Deploy an App
    - Create Namespace (devops)
    - Create/Deploy using Deployment
- Explore App
- Expose App publicly using Services
- Scale App
- Update App

# Next class Topic
- Create multi-node cluster
    - Load Balancer
- Deploy DaemonSet
- Storage
    - Persistent Volume
    - Persistent Volume Claim 


# Minikube commands:

kubectl -n devops create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1



export POD_NAME=$(kubectl -n devops get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME 

kubectl -n devops expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080

export NODE_PORT="$(kubectl -n devops get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).}}')"
echo "NODE_PORT=$NODE_PORT"

kubectl -n devops exec -ti kubernetes-bootcamp-67bdd9bd94-8pgjg -- curl http://localhost:8080



export NODE_PORT="$(kubectl -n devops get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')"
echo NODE_PORT=$NODE_PORT

curl http://"$(minikube ip -p seytech-flannel):$NODE_PORT"

minikube service --all -p seytech-flannel -n devops


# Tutorial Steps

- [Kubernetes Tutorial](https://kubernetes.io/docs/tutorials/kubernetes-basics/)