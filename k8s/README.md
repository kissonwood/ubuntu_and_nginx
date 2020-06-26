$ docker images | grep kissonwood/ubuntu_and_nginx
kissonwood/ubuntu_and_nginx          0.2                                              583316608d44        About an hour ago   156MB
kissonwood/ubuntu_and_nginx          0.3                                              583316608d44        About an hour ago   156MB
kissonwood/ubuntu_and_nginx          0.1                                              9c859a6d2b30        23 hours ago        156MB

$ kubectl run mynginx --image=kissonwood/ubuntu_and_nginx:0.3 --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/mynginx created

$ docker ps -a | grep mynginx
5769eac904bb        583316608d44           "nginx -g 'daemon of…"   45 seconds ago      Up 45 seconds                           k8s_mynginx_mynginx-7d66f4d848-rbhds_default_48a6701e-9851-488f-85eb-5eda3592bf82_0
ee743068cc85        k8s.gcr.io/pause:3.1   "/pause"                 45 seconds ago      Up 45 seconds                           k8s_POD_mynginx-7d66f4d848-rbhds_default_48a6701e-9851-488f-85eb-5eda3592bf82_0

$ kubectl get deployments | grep mynginx
mynginx   1/1     1            1           2m1s

$ kubectl expose deployment/mynginx --type="NodePort" --port 80
service/mynginx exposed

$ kubectl.exe get po | grep mynginx
mynginx-7d66f4d848-rbhds   1/1     Running   0          5m24s

$ kubectl scale deployment mynginx --replicas=20
deployment.apps/mynginx scaled

$ kubectl.exe get rs | grep mynginx
mynginx-7d66f4d848   20        20        20      7m22s

user@DESKTOP-14530KF MINGW64 ~/test2/test-1/work (master)
$ kubectl.exe get po | grep mynginx
mynginx-7d66f4d848-2pbdb   1/1     Running   0          51s
mynginx-7d66f4d848-7tbhr   1/1     Running   0          51s
mynginx-7d66f4d848-9ch52   1/1     Running   0          51s
mynginx-7d66f4d848-czfjm   1/1     Running   0          51s
mynginx-7d66f4d848-d98zh   1/1     Running   0          51s
mynginx-7d66f4d848-fjcjj   1/1     Running   0          51s
mynginx-7d66f4d848-fw47g   1/1     Running   0          51s
mynginx-7d66f4d848-g6qh4   1/1     Running   0          51s
mynginx-7d66f4d848-gnjdw   1/1     Running   0          51s
mynginx-7d66f4d848-hhcrw   1/1     Running   0          51s
mynginx-7d66f4d848-htpfl   1/1     Running   0          51s
mynginx-7d66f4d848-j2qbc   1/1     Running   0          51s
mynginx-7d66f4d848-ks2z2   1/1     Running   0          51s
mynginx-7d66f4d848-ksjfh   1/1     Running   0          51s
mynginx-7d66f4d848-mqhnb   1/1     Running   0          51s
mynginx-7d66f4d848-rbhds   1/1     Running   0          7m31s
mynginx-7d66f4d848-v9xpc   1/1     Running   0          51s
mynginx-7d66f4d848-wx687   1/1     Running   0          51s
mynginx-7d66f4d848-xjpct   1/1     Running   0          51s
mynginx-7d66f4d848-zfbvb   1/1     Running   0          51s


