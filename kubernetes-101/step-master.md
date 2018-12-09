The first stage of initialising the cluster is to launch the master node.  The master is responsible for running the control plane components;
- etcd (the cluster database)
- the API server (which the kubectl CLI communicates with)
- scheduler
- controller-manager

## Task

In this case we are using `kubeadm` which will create a minimum viable Kubernetes cluster that conforms to the Kubernetes Conformance tests.

`kubeadm init --token=7kpa7x.aqxooruii28hg8yk --kubernetes-version $(kubeadm version -o short)`{{execute HOST1}}

In order to automate this scenario, a pre-determined token is being used. However, on real machines, it's recommended to exclude the token causing `kubeadm` to generate one on your behalf. So, you would use something like below;

**Example:**

`kubeadm init --apiserver-advertise-address=$(hostname -i)`

## Reference

https://kubernetes.io/docs/setup/independent/create-cluster-kubeadm/