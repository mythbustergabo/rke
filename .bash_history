ssh-keygen -t rsa
ssh-copy-id cp02
exit
ssh-copy-id cp02
ssh cp02
ssh-copy-id cp03
ssh-copy-id worker01
ssh-copy-id worker02
ssh-copy-id worker03
ssh-copy-id etcd01
ssh-copy-id etcd02
ssh-copy-id etcd03
exit
ls -l
rke up
ssh-copy-id localhost
rke up
kubectl get nodes
ls -l
mkdir .kube
cat kube_config_cluster.yml > .kube/config
kubectl get nodes
rke 
rke remove
ls -l
cat cluster.yml 
vi cluster.yml 
rke up
rke remove
vi cluster.yml 
rke up
ssh etcd01
rke destroy
rke
rke reove
rke remove
ssh worker03
scp cluster.yml worker03
ssh worker03
cp -R .ssh worker03:.
ssh worker03
cd .ssh/
ls -l
cp * worker03:./.ssh/
scp * worker03:./.ssh/
ssh worker03
cd
exit
cd
rke up
for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do     sudo firewall-cmd --add-port=${i}/tcp --permanent; done
sudo firewall-cmd --reload
for i in 8285 8472 4789 30000-32767; do    sudo firewall-cmd --add-port=${i}/udp --permanent; done
ssh cp02 for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done
ssh cp02 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done"
ssh cp02 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done"
ssh cp02 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh cp03 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh etcd01 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh etcd02 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh etcd03 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh worker01 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh worker02 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh worker03 "for i in 22 80 443 179 5473 6443 8472 2376 8472 2379-2380 9099 10250 10251 10252 10254 30000-32767; do sudo firewall-cmd --add-port=${i}/tcp --permanent; done; sudo firewall-cmd --reload"
ssh cp02 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh cp03 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh etcd01 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh etcd02 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh etcd03 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh worker01 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh worker02 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
ssh worker03 "for i in 8285 8472 4789 30000-32767; do sudo firewall-cmd --add-port=${i}/udp --permanent; done;sudo firewall-cmd --reload"
rke up
iptables -L -n
sudo iptables -L -n
ssh 16.16.100.61
vi firewall_rules.sh
cat firewall_rules.sh 
scp firewall_rules.sh etcd01
scp firewall_rules.sh etcd01:.
scp firewall_rules.sh etcd02:.
scp firewall_rules.sh etcd03:.
scp firewall_rules.sh worker01:.
scp firewall_rules.sh worker02:.
scp firewall_rules.sh worker03:.
scp firewall_rules.sh cp02:.
scp firewall_rules.sh cp03:.
ssh etcd01 bash firewall_rules.sh
ssh etcd02 bash firewall_rules.sh
ssh etcd03 bash firewall_rules.sh
ssh worker01 bash firewall_rules.sh
ssh worker02 bash firewall_rules.sh
ssh worker03 bash firewall_rules.sh
ssh cp01 bash firewall_rules.sh
ssh cp02 bash firewall_rules.sh
ssh cp03 bash firewall_rules.sh
rke up
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
vi firewall_rules.sh 
mv firewall_rules.sh 
mv firewall_rules.sh installation_rke.sh
vi installation_rke.sh 
sudo vi /etc/ssh/sshd_config 
exit
