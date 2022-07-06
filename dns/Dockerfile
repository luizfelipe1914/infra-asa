FROM debian:stable
RUN apt update;apt upgrade -y
RUN apt install -y bind9 dnsutils wget curl iproute2 iputils-ping
COPY ./bind/* /etc/bind
COPY entrypoint.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
EXPOSE 53/udp 53/tcp
CMD [ "service", "named", "restart" ]
