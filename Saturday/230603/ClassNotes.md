# Class Notes - 060323

## Recap Kubernetes Components
    - PODs
        - Image
    The ways to create PODs:
        - kubectl 
            ```
            kubectl run <pod_name> --image=<image_name> 
            ```
        - from file using `kubectl create/apply`
        - Using Workload Resources:
            - Deployment
                - Feature of Deployment:
                    - Makes sure that the desired number of pods running all the time
                    - Uses Replicate in the behind the make sure desired number of pods are running
            - ReplicaSet
                - Feature of teh ReplicaSet:
                    - Guarantees the desired setup replicate is up and running.
                    - Not recommended by Kubenetes, rather use Deployment.
            - StatefulSet
                - Features of the StatefulSet:
                    - Used for stateful applications
                    - Sync data all the time between pods
                    - Usually done this by using the Persistent Volume 
            - DaemonSet
                - Feature of the DeamonSet:
                    - Makes sure the pod gets deployed on all Nodes
            - Jobs
                - Features of Jobs:
                    - Running short lived jobs 
            - Automatic Cleanup for Finished Jobs
                - Features of ACforFJ:
                    - 
            - CronJob
                - Feature of the Cronjob:
                    - Scehduling at the certain time
            - ReplicationController
                - 
        
## How many pods can run in single Node
