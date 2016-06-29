FROM ubuntu
MAINTAINER s-kono <s-kono@nri.co.jp>
RUN apt-get update
RUN apt-get install -y nginx
ADD index.html /var/www/html/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
