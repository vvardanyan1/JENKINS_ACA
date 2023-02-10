FROM ubuntu:latest
RUN apt-get update && apt-get install nginx -y
COPY index.html /var/www/html/
RUN cat /vra/www/html/index.html |grep -w poverty
CMD [ "nginx", "-g", "daemon off;" ]