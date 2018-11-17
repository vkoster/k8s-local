#!/usr/bin/env bash
# so heißt das Network Interface, auf das Flannel gehen muß:
# enp0s8

# Deploment mit Quote-Pod
kubectl create -f deploy_quote.yml --record
kubectl get deployment quote
kubectl describe deployment quote
kubectl rollout status deployment quote

# Service deployen
kubectl create -f service_quote.yml

