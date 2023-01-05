# demo_crm3_k8s_helm_tls
### In this project, I engineer a three tier application(certified by letsencrypt) using helm charts in Kubernetes(GCP)
## Cluster was created using standard config.
---

## Project Breakdown
- The FrontEnd application was built in react which was provisioned with a deployment resource type and cluster IP service.
- I implemented an Ingress Resource which was connected to an nginx-Ingress controller that directs traffic to the frontend deployment through the clusterIP.
- I secured certificates using clusterIssuer resource and cert-manager helm charts for the Ingress Resource above.
- I provisioned the database(mongodb) as a replicaSet architecture of 3 replicas using helm charts.
- I created a domain name on which the Load Balancer from the nginx-Ingress controller could be accessed from using no-ip.
- In the nutshell my application could be accessed via **HTTPS** using a certified domain name.
---

## Architecture Diagram of Kubernetes Cluster
![alt text](https://github.com/belisky/demo_crm3_k8s_helm_tls/blob/main/demo-crm-3.png?raw=true)
