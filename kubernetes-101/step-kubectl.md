To manage the Kubernetes cluster, the client configuration and certificates are required. In order to send a request succesfully, `kubectl` needs to be able authenticate. User creditionals are almost always stored in the `kubeconfig` file which resides on disk, but that file can be stored in different locations. To locat it, `kubectl` does the following;

- if a `--kubeconfig` flag is provided, use that.
- if the @KUBECONFIG environment variable is defined, use that.
- otherwsie look in the user home directory like `~/.kube`, and use the first file found.

## Task

In this scenario, the configuration is created when `kubeadm` initialises the cluster.

So lets copy the configuration to the users home directory and set the environment variable so that `kubectl` can issue commands to the API server.

`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute HOST1}}

`sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf`{{execute HOST1}}

## Verify

Check component status to verify master services are working.

`kubectl get componentstatuses`{{execute HOST1}} or you can use the alias `kubectl get cs`

We can also check the cluster info.

`kubectl cluster-info`{{execute HOST1}}

## Reference

https://kubernetes.io/docs/tasks/tools/install-kubectl/
