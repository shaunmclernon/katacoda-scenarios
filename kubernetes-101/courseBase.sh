ssh root@host01 "docker pull k8s.gcr.io/kube-apiserver-amd64:v1.11.5"
ssh root@host01 "docker pull k8s.gcr.io/kube-controller-manager-amd64:v1.11.5"
ssh root@host01 "docker pull k8s.gcr.io/kube-scheduler-amd64:v1.11.5"
ssh root@host01 "docker pull k8s.gcr.io/kube-proxy-amd64:v1.11.5"
ssh root@host01 "docker pull k8s.gcr.io/pause:3.1"
ssh root@host01 "docker pull k8s.gcr.io/etcd-amd64:3.2.18"
ssh root@host01 "docker pull k8s.gcr.io/coredns:1.1.3"

ssh root@host01 "echo 'docker images pulled'"