The first stage of initialising the cluster is to launch the master node.  The master is the responsible for running the control plane components run, including etcd (the cluster database) and the API server (which the kubectl CLI communicates with).

## Task

In this case we are using `kubeadm` which will create a minimum viable Kubernetes cluster that conforms to the Kubernetes Conformance tests.

`kubeadm init --apiserver-advertise-address=$(hostname -i)`{{execute HOST1}}

`kubeadm init --token=102952.1a7dd4cc8d1f4cc5`{{execute HOST1}}

## Reference

https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/