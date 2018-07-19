FROM phusion/baseimage

RUN add-apt-repository ppa:deluge-team/ppa \
    && apt-get update \
    && apt-get install -y wget \
    && wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg|apt-key add - \
    && apt-get update \
    && apt-get install -y openvpn deluged deluge-web net-tools iptables

RUN mkdir -p /vpn \ 
    && cp /etc/openvpn/update-resolv-conf /vpn

RUN mkdir /etc/service/deluge
ADD deluge.sh /etc/service/deluge/run
RUN chmod +x /etc/service/deluge/run

RUN mkdir /etc/service/openvpn
ADD openvpn.sh /etc/service/openvpn/run
RUN chmod +x /etc/service/openvpn/run

ADD iptable.sh /iptable.sh
RUN chmod +x /iptable.sh

RUN mkdir -p /config
ADD health.sh /health.sh

CMD /sbin/my_init
