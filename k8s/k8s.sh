
docker images | grep kissonwood/ubuntu_and_nginx
kubectl run mynginx --image=kissonwood/ubuntu_and_nginx:0.3 --port=80
kubectl get deployments | grep mynginx
kubectl expose deployment/mynginx --type="NodePort" --port 80
kubectl.exe get po | grep mynginx
kubectl scale deployment mynginx --replicas=20
kubectl.exe get rs | grep mynginx
kubectl.exe get po | grep mynginx
