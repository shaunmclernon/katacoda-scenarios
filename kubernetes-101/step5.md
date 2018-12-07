Once Users must run the command `kubectl get nodes`{{execute}} before they can proceed to step 2. The verify script is a bash command. If the user can proceed the script should output "done" with exit code 0.

A solution button available if users require help in order to proceed. The text is loaded from step5-answer.md.

```
kubectl get nodes
NAME      STATUS    ROLES     AGE       VERSION
master    Ready     master    7m        v1.11.3
node01    Ready     <none>    6m        v1.11.3
```

At this point, we have a minimum viable Kubernetes cluster that conforms to the Kubernetes Conformance tests.

## Reference

https://kubernetes.io/blog/2017/10/software-conformance-certification/