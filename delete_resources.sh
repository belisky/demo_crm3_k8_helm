#!/bin/bash
kubectl delete -f resources/
helm delete nginx 
helm delete mongo 
helm delete cert-manager
kubectl delete -f https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.crds.yaml