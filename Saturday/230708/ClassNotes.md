# Class Notes - 070823

# Introduction to Helm
- [What is Helm](https://helm.sh/docs/helm/helm/)
- [Install Helm](https://helm.sh/docs/intro/install/)

## Steps:
- Install helm 
- Added repositority 
    ```
    helm repo add bitnami https://charts.bitnami.com/bitnami
    ```
- List the charts in the repository
    ```
     helm search repo bitnami
    ```
- Install charts from above added repository
    ```
    helm install bitnami/mysql --generate-name
    ```

- Check the status of chart
    ```
    # List the helm releases
    helm list 

    # check the helm release/chart status
    helm status <name_of_the_chart>

    # Get more infor about the helm releases
    helm get manifest <name_of_the_chart>
    ```

## [!Important] **Three Big Concepts**
- Helm CHart --> is a Helm package (**It contains all of the resource definitions necessary to run an application, tool, or service inside of a Kubernetes cluster**)
- A Repository is the place where charts can be collected and shared --> **Bitnami, Hashicorp** --> "ArtifactHub"
- A Release is an instance of a chart running in a Kubernetes cluster. One chart can often be installed many times into the same cluster. And each time it is installed, a new release is created. Consider a MySQL chart. If you want two databases running in your cluster, you can install that chart twice. Each one will have its own release, which will in turn have its own release name.


## Healm Search 
- helm search hub  --> searches in the **Artifact Hub**
- helm search repo --> searches in your local repository you have added

## [Customize Helm Chart](https://helm.sh/docs/intro/using_helm/#customizing-the-chart-before-installing)
    - Install from file
        ```
        helm install marzhan-vault -f vault-values.yaml shaicorp/vault        ##   --generate-name --> helm to generate release name

        helm install marzhan-vault --values vault-values.yaml shaicorp/vault 
        ```
## Upgrade, Rollback Helm Release
- helm upgrade <release_name>
- helm rollback <release_name> <revision_number>  // helm rollback happy-panda 1


## Uninstall Helm Chart
- helm uninstall happy-panda

## Working with Helm Repositories
- helm repo list 
- helm repo add 
- helm repo update 
- helm repo remove

## [Creating Own Chart](https://helm.sh/docs/intro/using_helm/#creating-your-own-charts)
- helm create <name>        --> Creates helm chart 
- helm package <name>       --> Pakcages helm chart 

## [Company Diagram](https://app.diagrams.net/)