#!/bin/bash

echo "Running tests..."

# Test endpoints
if ! curl -s -o /dev/null -w "%{http_code}" http://localhost:5000/patients | grep -q "200"; then
  echo "Patient Record Service test failed!"
  exit 1
fi

if ! curl -s -o /dev/null -w "%{http_code}" http://localhost:5001/appointments | grep -q "200"; then
  echo "Appointment Scheduling Service test failed!"
  exit 1
fi

if ! curl -s -o /dev/null -w "%{http_code}" http://localhost:5002/notifications | grep -q "200"; then
  echo "Notification Service test failed!"
  exit 1
fi

if ! curl -s -o /dev/null -w "%{http_code}" http://localhost:5003/aggregate | grep -q "200"; then
  echo "Aggregator Service test failed!"
  exit 1
fi

echo "All tests passed successfully!"
