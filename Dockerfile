FROM ubuntu
MAINTAINER kissonwood@gmail.com
RUN apt update -y
RUN apt install -y tree
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]


