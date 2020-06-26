ubuntu_and_nginx

[Image] https://hub.docker.com/repository/docker/kissonwood/ubuntu_and_nginx

[Dockerfile] https://github.com/kissonwood/ubuntu_and_nginx

[Image Build] docker build --tag kissonwood/ubuntu_and_nginx:0.3 .

[Image Ussage] winpty docker run
-it
--rm
--name n1
--publish 8888:80
-v c:\Users\user\html:/usr/share/nginx/html
kissonwood/ubuntu_and_nginx:0.3

[Image Push] docker push kissonwood/ubuntu_and_nginx:0.3
