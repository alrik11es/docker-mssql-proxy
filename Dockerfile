FROM nginx:stable-alpine

WORKDIR /usr/local/docker-mssql-proxy

ADD certs /usr/local/docker-mssql-proxy
ADD start.sh /usr/local/docker-mssql-proxy/start.sh
ADD nginx.conf /etc/nginx/nginx.conf

RUN apk update                 && \
    apk add --no-cache openvpn && \
    chmod 600 client.pem       && \
    chmod +x start.sh

EXPOSE 1433 80
# 1434/udp

#//CMD ["/usr/local/docker-mssql-proxy/start.sh"]

ENTRYPOINT ["/usr/local/docker-mssql-proxy/start.sh"]