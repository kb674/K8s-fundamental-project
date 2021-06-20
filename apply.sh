#!/bin/bash
kubectl apply -f db-deployment.yaml
sleep 10
kubectl apply -f app-deployment.yaml
sleep 10
kubectl exec $(kubectl get pods | grep "app") -- python3 create.py
kubectl get services | grep "app-service"