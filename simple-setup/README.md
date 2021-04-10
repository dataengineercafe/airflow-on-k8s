# Simple Setup

```sh
kubectl apply -f postgres-deployment.yml
```

```sh
kubectl apply -f airflow-init-pod.yml
```

```sh
kubectl apply -f airflow-webserver-deployment.yml
```

```sh
kubectl apply -f airflow-scheduler-deployment.yml
```

```sh
kubectl get pods
kubectl exec -it airflow-webserver-deployment-5dfb447946-cbxbj -- bash -c "airflow users create --role Admin --username airflow --password airflow --email airflow@airflow.com --firstname airflow --lastname airflow"
```

## Accessing Airflow Web UI


If you're using [Minikube](https://minikube.sigs.k8s.io/), run:

```sh
minikube service --url airflow-webserver-service
```
