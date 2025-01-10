#!/bin/bash

# CVPC
# REGISTRY=127.0.0.1:5000
# AKS
REGISTRY=harbor.cht.com.tw:30725/p_cht_845_s3

docker tag quay.io/minio/minio:RELEASE.2023-12-20T01-00-02Z ${REGISTRY}/minio/minio:RELEASE.2023-12-20T01-00-02Z
docker push ${REGISTRY}/minio/minio:RELEASE.2023-12-20T01-00-02Z

docker tag mysql:8.0.39 ${REGISTRY}/mysql:8.0.40
docker push ${REGISTRY}/mysql:8.0.40

docker tag valkey/valkey:8 ${REGISTRY}/valkey/valkey:8
docker push ${REGISTRY}/valkey/valkey:8

docker tag docker.elastic.co/elasticsearch/elasticsearch:8.11.3 ${REGISTRY}/elasticsearch/elasticsearch:8.11.3
docker push  ${REGISTRY}/elasticsearch/elasticsearch:8.11.3

docker tag infiniflow/ragflow:v0.15.1 ${REGISTRY}/infiniflow/ragflow:v0.15.1
docker push ${REGISTRY}/infiniflow/ragflow:v0.15.1

docker tag busybox:latest ${REGISTRY}/busybox:latest
docker push ${REGISTRY}/busybox:latest

docker tag alpine:latest ${REGISTRY}/alpine:latest
docker push ${REGISTRY}/alpine:latest
