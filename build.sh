#!/usr/bin/env bash

podman build \
  --tag quay.io/freedomben/alertmanager-receiver:latest \
  --tag quay.io/freedomben/alertmanager-receiver:v1.0.1 \
  .
