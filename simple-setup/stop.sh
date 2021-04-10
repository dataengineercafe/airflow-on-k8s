#!/bin/bash

kubectl delete -f postgres-deployment.yml
kubectl delete -f airflow-init-pod.yml
kubectl delete -f airflow-webserver-deployment.yml
kubectl delete -f airflow-scheduler-deployment.yml
