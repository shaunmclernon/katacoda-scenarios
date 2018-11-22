The first stage of initialising the cluster is to launch the master node. The master is responsible for running the control plane components, etcd and the API server. Clients will communicate to the API to schedule workloads and manage the state of the cluster.

## Task

The command below will initialise the cluster with a known token to simplify the following steps.

`kubeadm init --apiserver-advertise-address $(hostname -i)`{{execute}}

To manage the Kubernetes cluster, the client configuration and certificates are required. This configuration is created when kubeadm initialises the cluster. The command copies the configuration to the users home directory and sets the environment variable for use with the CLI.

`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute}}

Verify master node is ready by inspecting the nodes in the cluster.

`kubectl get nodes`{{execute}}

If the node is marked as *NotReady* then it is still starting the components.

This command shows all nodes that can be used to host our applications. Now we have only one node, and we can see that it’s status is ready (it is ready to accept applications for deployment).

Reference: https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/