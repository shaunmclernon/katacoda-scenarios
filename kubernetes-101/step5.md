Now that the networking has been installed we can verify that the cluster is ready. View the nodes `kubectl get nodes`{{execute HOST1}} and when the `STATUS` column shows as `Ready`, its good to go.

Example:
```
kubectl get nodes
NAME      STATUS    ROLES     AGE       VERSION
master    Ready     master    7m        v1.11.3
node01    Ready     <none>    6m        v1.11.3
```

At this point, we have a minimum viable Kubernetes cluster that conforms to the Kubernetes Conformance tests.

## Reference

https://kubernetes.io/blog/2017/10/software-conformance-certification/