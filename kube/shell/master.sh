kubeadm init --config ../conf/kubeadm.yaml
mkdir ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config

kubectl apply -f ../conf/net/calico.yaml

kubectl taint nodes --all node-role.kubernetes.io/master-

kubectl apply -f ../conf/heapster/
kubectl apply -f ../conf/heapster/rbac

kubectl apply -f ../conf/dashboard
