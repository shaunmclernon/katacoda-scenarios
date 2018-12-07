You must install a pod network add-on so that your pods can communicate with each other. The network must be deployed before any applications. Also, CoreDNS will not start up before a network is installed. kubeadm only supports Container Network Interface (CNI) based networks (and does not support kubenet).

## Task

Run "`kubectl apply -f [podnetwork].yaml`" with one of the options listed in the addons reference link below:

Several projects provide Kubernetes pod networks using CNI, some of which also support Network Policy. See the add-ons page for a complete list of available network add-ons. - IPv6 support was added in CNI v0.6.0. - CNI bridge and local-ipam are the only supported IPv6 network plugins in Kubernetes version 1.9.

Note that kubeadm sets up a more secure cluster by default and enforces use of RBAC. Make sure that your network manifest supports RBAC.
You can install a pod network add-on with the following command:

Example to deploy flannel;

`kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/bc79dd1505b0c8681ece4de4c0d86c5cd2643275/Documentation/kube-flannel.yml`{{execute HOST1}}

## Reference

https://kubernetes.io/docs/concepts/cluster-administration/addons/