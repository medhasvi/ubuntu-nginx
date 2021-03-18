FROM ubuntu:20.04
MAINTAINER "sudheer <dubareddy.383@gmail.com>"
RUN apt update
RUN apt install -y nginx \
    iproute2 \
    curl \
    iputils-ping
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]
