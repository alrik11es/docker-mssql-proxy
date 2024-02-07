FROM nginx:stable-alpine

RUN apk add openvpn

WORKDIR /usr/local/docker-mssql-proxy

COPY . .

ADD nginx.conf /etc/nginx/nginx.conf

RUN chmod 600 client.pem
RUN chmod +x start.sh

EXPOSE 1433 80
# 1434/udp

#//CMD ["./start.sh"]

ENTRYPOINT ["./start.sh"]