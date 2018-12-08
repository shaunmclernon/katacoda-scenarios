To manage the Kubernetes cluster, the client configuration and certificates are required. This configuration is created when kubeadm initialises the cluster. The command copies the configuration to the users home directory and sets the environment variable for use with the CLI.

`export KUBECONFIG=/etc/kubernetes/admin.conf`{{execute HOST1}}

## Verify

Check component status to verify master services are working.

`kubectl get componentstatuses`{{execute HOST1}} or you can use the alias `kubectl get cs`

We can also check the cluster info.

`kubectl cluster-info`{{execute HOST1}}
