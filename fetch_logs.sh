#!/bin/bash

# Variables
NAMESPACE="my-app"
SERVICE_NAME="backend"
LOG_FILE="./PlantAndPlanters/application.log"

# Get the pod name associated with the service
POD_NAME=$(kubectl get endpoints $SERVICE_NAME -n $NAMESPACE -o jsonpath="{.subsets[0].addresses[0].targetRef.name}")

if [ -z "$POD_NAME" ]; then
  echo "No pod found for service $SERVICE_NAME in namespace $NAMESPACE."
  exit 1
fi

echo "Fetching logs from pod $POD_NAME in namespace $NAMESPACE."

# Fetch logs and append to the log file
kubectl logs $POD_NAME -n $NAMESPACE >> $LOG_FILE

echo "Logs fetched and appended to $LOG_FILE."
