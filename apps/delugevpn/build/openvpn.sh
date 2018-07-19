#!/bin/bash

iptables -t nat -A POSTROUTING -s 192.168.2.0/24 -o eth0 -j MASQUERADE
echo 1 > /proc/sys/net/ipv4/ip_forward

openvpn --config /etc/openvpn/default.ovpn
