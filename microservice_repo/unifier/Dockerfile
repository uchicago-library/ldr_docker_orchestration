from nginx:1.11.10-alpine

RUN rm /etc/nginx/conf.d/*
COPY proxy.conf /etc/nginx/conf.d/
RUN mkdir /www/
COPY www/ /www/
