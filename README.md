# Airflow on Kubernetes

## Using K8S from Docker Desktop

Create a new context for Airflow 

```sh
kubectl config set-context airflow --namespace default --cluster docker-desktop --user=docker-desktop
```