Once the Master has initialised, additional nodes can join the cluster as long as they have the correct token. The tokens can be managed via kubeadm token, for example `kubeadm token list`{{execute}}.

## Task
On the second node, run the command to join the cluster providing the IP address of the Master node.

It will look something like this;

`kubeadm join 172.17.0.16:6443 --token 102952.1a7dd4cc8d1f4cc5 --discovery-token-ca-cert-hash sha256:cb539695e3925e00ab6fae8f04074e956ad7f4c0d071f0b5ef5d395d67c7c936`

This is the same command provided after the Master has been initialised.

<!-- The --discovery-token-unsafe-skip-ca-verification tag is used to bypass the Discovery Token verification. As this token is generated dynamically, we couldn't include it within the steps. When in production, use the token provided by kubeadm init. -->