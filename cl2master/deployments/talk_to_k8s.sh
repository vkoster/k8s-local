#!/usr/bin/env bash
# check Cluster Setup
## check for cgroup driver in Kubernetes & Docker
# expectation: they match
docker info | grep -i cgroup
sudo sudo cat /var/lib/kubelet/config.yaml | grep cgroup

## Check internal IP Address:
# Expectation: INTERNAL-IPs are the Private Network IPs of the nodes
kubectl get nodes -o wide




# so heißt das Network Interface, auf das Flannel gehen muß:
# enp0s8

# Deploment mit Quote-Pod
kubectl create -f deploy_quote.yml --record
kubectl get deployment quote
kubectl describe deployment quote
kubectl rollout status deployment quote

# Service deployen
kubectl create -f service_quote.yml

# Persistent Volume für Mongo-DB anlegen
kubectl create -f deployments/system/nfs-mongo-pv.yaml

