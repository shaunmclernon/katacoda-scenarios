You must install a pod network add-on so that your pods can communicate with each other. The network must be deployed before any applications. Also, CoreDNS will not start up before a network is installed. kubeadm only supports Container Network Interface (CNI) based networks (and does not support kubenet).

The Container Network Interface (CNI) defines how the different nodes and their workloads should communicate. There are multiple network providers available, some are listed [here](https://kubernetes.io/docs/admin/addons/).

## Task

In this scenario we'll use WeaveWorks. The deployment definition can be viewed at `cat /opt/weave-kube`{{execute HOST1}}

This can be deployed using kubectl apply.

`kubectl apply -f /opt/weave-kube`{{execute HOST1}}

Weave will now deploy as a series of Pods on the cluster. The status of this can be viewed using the command `kubectl get pod -n kube-system`{{execute HOST1}}

When installing Weave on your cluster, visit https://www.weave.works/docs/net/latest/kube-addon/ for details.


## Reference

https://kubernetes.io/docs/concepts/cluster-administration/addons/