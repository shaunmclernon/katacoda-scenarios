Now that the master has been initialised, lets add an additional node to the cluster. In order to do that we need to supply a correct token. Tokens can be managed via `kubeadm` token, for example `kubeadm token list`{{execute}}.

## Task

So on the second host, run the command to join the cluster providing the IP address of the master node.

It will look something like this;

`kubeadm join --discovery-token-unsafe-skip-ca-verification --token=7kpa7x.aqxooruii28hg8yk 172.17.0.82:6443`{{execute HOST2}}

### Note

In this case the `--discovery-token-unsafe-skip-ca-verification` tag is used to bypass the Discovery Token verification, purely for the purposes of automating this scenario (due to the token being generated dynamically). If using on real machines, it is recommended to use the token provided by the `kubeadm` init step.

**Example:**

`kubeadm join 172.17.0.16:6443 --token 102952.1a7dd4cc8d1f4cc5 --discovery-token-ca-cert-hash sha256:cb539695e3....d395d67c7c936`
