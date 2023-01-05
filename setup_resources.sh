#!/bin/bash
helm install mongo -f mongo-values.yaml bitnami/mongodb
sleep 100
kubectl apply -f resources/
sleep 20
helm install nginx -f nginx-values.yaml nginx-stable/nginx-ingress
 