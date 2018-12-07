The first stage of initialising the cluster is to launch the master node.  The master is the responsible for running the control plane components run, including etcd (the cluster database) and the API server (which the kubectl CLI communicates with).

## Task

The command below will initialise the cluster with a known token to simplify the following steps.

`kubeadm init --apiserver-advertise-address=$(hostname -i)`{{execute HOST1}}

To manage the Kubernetes cluster, the client configuration and certificates are required. This configuration is created when kubeadm initialises the cluster. The command copies the configuration to the users home directory and sets the environment variable for use with the CLI.

`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute HOST1}}

## Reference

https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/