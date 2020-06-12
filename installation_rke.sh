#!/bin/bash

# ===================== Firewall rules

for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do
    sudo firewall-cmd --add-port=${i}/tcp --permanent
done
for i in 8285 8472 4789 30000-32767; do
   sudo firewall-cmd --add-port=${i}/udp --permanent
done
sudo firewall-cmd --reload

# ===================== Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# ===================== kenel modules
for module in br_netfilter ip6_udp_tunnel ip_set ip_set_hash_ip ip_set_hash_net iptable_filter iptable_nat iptable_mangle iptable_raw nf_conntrack_netlink nf_conntrack nf_conntrack_ipv4   nf_defrag_ipv4 nf_nat nf_nat_ipv4 nf_nat_masquerade_ipv4 nfnetlink udp_tunnel veth vxlan x_tables xt_addrtype xt_conntrack xt_comment xt_mark xt_multiport xt_nat xt_recent xt_set  xt_statistic xt_tcpudp;
     do
       if ! lsmod | grep -q $module; then
         echo "module $module is not present";
       fi;
# ===================== disable swap
sudo swapoff -a

# ===================== sysctl

sudp echo "net.bridge.bridge-nf-call-iptables  = 1" >> /etc/sysctl.d/99-kubernetes.conf
sudo echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.d/99-kubernetes.conf
sudo echo "net.bridge.bridge-nf-call-ip6tables = 1" >> /etc/sysctl.d/99-kubernetes.conf
sudo sysctl --system


