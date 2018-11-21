The first stage of initialising the cluster is to launch the master node. The master is responsible for running the control plane components, etcd and the API server. Clients will communicate to the API to schedule workloads and manage the state of the cluster.

## Task

The command below will initialise the cluster with a known token to simplify the following steps.

`kubeadm init --apiserver-advertise-address $(hostname -i)`{{execute}}

To manage the Kubernetes cluster, the client configuration and certificates are required. This configuration is created when kubeadm initialises the cluster. The command copies the configuration to the users home directory and sets the environment variable for use with the CLI.

`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute}}

Verify master is ready.

`kubectl get nodes`{{execute}}

Reference: https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/