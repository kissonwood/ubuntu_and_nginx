ubuntu_and_nginx

[Dockerfile] FROM ubuntu MAINTAINER kissonwood@gmail.com RUN apt update -y RUN apt install -y tree RUN apt install -y nginx

[Image Build] docker build --tag kissonwood/ubuntu_and_nginx:0.2 .

[Image Ussage] winpty docker run
-it
--rm
--name n1
--publish 8888:80
-v c:\Users\user\html:/usr/share/nginx/html
kissonwood/ubuntu_and_nginx:0.2

[Image Push] docker push kissonwood/ubuntu_and_nginx:0.2
