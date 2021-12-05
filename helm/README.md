# Airflow Deployment on K8S using Helm

All Airflow configuration parameters are stored in [values.yaml](https://github.com/apache/airflow/blob/main/chart/values.yaml).

To Install the Helm chart:

```sh
kubectl create namespace airflow
helm repo add apache-airflow https://airflow.apache.org
helm install airflow apache-airflow/airflow -n airflow
```

Output:

```
Airflow Webserver:     kubectl port-forward svc/airflow-webserver 8080:8080 --namespace airflow
Flower dashboard:      kubectl port-forward svc/airflow-flower 5555:5555 --namespace airflow
Default Webserver (Airflow UI) Login credentials:
    username: admin
    password: admin
Default Postgres connection credentials:
    username: postgres
    password: postgres
    port: 5432

You can get Fernet Key value by running the following:

    echo Fernet Key: $(kubectl get secret --namespace airflow airflow-fernet-key -o jsonpath="{.data.fernet-key}" | base64 --decode)
```

To upgrade the Helm chart:

```sh
helm upgrade -f values.yaml airflow apache-airflow/airflow -n airflow
```

To delete Airflow deployment:

```sh
helm delete airflow -n airflow
```

## References

* [Helm Chart for Apache Airflow](https://airflow.apache.org/docs/helm-chart/stable/index.html)