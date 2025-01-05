#!/bin/bash
echo "Building Docker Images..."
docker build -t patient-record-service ./patient-record-service
docker build -t notification-service ./notification-service
docker build -t appointment-service ./appointment-service
docker build -t aggregator-service ./aggregator-service
