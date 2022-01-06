# Airflow on Kubernetes (K8s)

## Using K8s from Docker Desktop

Create a new context for Airflow 

```sh
kubectl config set-context airflow --namespace default --cluster docker-desktop --user=docker-desktop
```
