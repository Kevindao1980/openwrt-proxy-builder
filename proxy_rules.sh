#!/bin/sh

modprobe xt_TPROXY
modprobe xt_socket
modprobe nf_tproxy_ipv4

iptables -t mangle -N PROXY
iptables -t mangle -A PROXY -p tcp -j TPROXY --on-port 12345 --tproxy-mark 1
iptables -t mangle -A PREROUTING -j PROXY

ip rule add fwmark 1 lookup 100
ip route add local 0.0.0.0/0 dev lo table 100
