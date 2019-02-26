#!/usr/bin/env bash

#
# This script installs Helm in the master mode
#
# vkoster
# 16.02.2019: Download and install Helm

echo " -o- creating system account for tiller"
kubectl create serviceaccount tiller --namespace kube-system
echo " -o- deploying the ClusterRoleBinding"
kubectl create -f deployments/system/tiller-clusterrolebinding.yaml
echo " -o- Cluster ready for 'helm int'"

echo " -o- downloading Helm..."
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.12.3-linux-amd64.tar.gz
echo " -o- unpacking and moving binary to /usr/local/bin/helm..."
tar -zxvf helm-v2.12.3-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
echo " -o- cleaning up"
rm -rf linux-amd64
rm -f helm-v2.12.3-linux-amd64.tar.gz

echo " -o- deploying Tilller"
helm init --service-account tiller
# helm init --service-account tiller --upgrade

