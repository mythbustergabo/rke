#!/bin/bash
ssh cp02 bash installation_rke.sh
ssh cp03 bash installation_rke.sh
ssh etcd01 bash installation_rke.sh
ssh etcd02 bash installation_rke.sh
ssh etcd03 bash installation_rke.sh
ssh worker01 bash installation_rke.sh
ssh worker02 bash installation_rke.sh
ssh worker03 bash installation_rke.sh
