The cluster has now been initialised. The Master node will manage the cluster, while our one worker node will run our container workloads.

## Task

The Kubernetes CLI, known as *kubectl*, can now use the configuration to access the cluster. For example, the command below will return the two nodes in our cluster.

`kubectl get nodes`{{execute}}

**At this point, the Nodes will not be ready.**

This is because the Container Network Interface has not been deployed. 

So lets add some networking.