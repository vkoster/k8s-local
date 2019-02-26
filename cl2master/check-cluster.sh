#!/usr/bin/env bash

#
# This Script can be run to check basic properties of the cluster installation:
# - do the cgroup drivers of docker and kubernetes match?
# - are the node IPs what we expect?
# - are the system pods up and running?
#
# ...add more check later
# vkoster
# 20.02.2019: created
#

echo "check for cgroup driver in Kubernetes & Docker"
echo "  expectation: they match"
docker info | grep -i cgroup
sudo sudo cat /var/lib/kubelet/config.yaml | grep cgroup
echo "Check internal IP Address"
echo "  Expectation: INTERNAL-IPs are the Private Network IPs of the nodes"
kubectl get nodes -o wide
echo "Check if all kube-system pods are up and running"
kubectl get pods -n kube-system

