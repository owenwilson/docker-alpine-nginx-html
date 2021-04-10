FROM alpine:3.13
RUN apk update
RUN apk add nginx
RUN mkdir /www
ADD index.html /www/index.html
COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /run/nginx
EXPOSE 80
CMD /usr/sbin/nginx -g "daemon off;"
