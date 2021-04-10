#!/bin/bash

kubectl apply -f postgres-deployment.yml
kubectl apply -f airflow-init-pod.yml
kubectl apply -f airflow-webserver-deployment.yml
kubectl apply -f airflow-scheduler-deployment.yml
