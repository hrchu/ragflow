#!/bin/bash

# CVPC
REGISTRY=127.0.0.1:5000
# AKS
#REGISTRY=harbor.cht.com.tw:30725

docker pull quay.io/minio/minio:RELEASE.2023-12-20T01-00-02Z  
docker tag quay.io/minio/minio:RELEASE.2023-12-20T01-00-02Z ${REGISTRY}/minio/minio:RELEASE.2023-12-20T01-00-02Z
docker push ${REGISTRY}/minio/minio:RELEASE.2023-12-20T01-00-02Z

docker pull mysql:8.0.39 
docker tag mysql:8.0.39 ${REGISTRY}/mysql:8.0.39
docker push ${REGISTRY}/mysql:8.0.39

docker pull valkey/valkey:8 
docker tag valkey/valkey:8 ${REGISTRY}/valkey/valkey:8
docker push ${REGISTRY}/valkey/valkey:8

docker pull docker.elastic.co/elasticsearch/elasticsearch:8.11.3 
docker tag docker.elastic.co/elasticsearch/elasticsearch:8.11.3 ${REGISTRY}/elasticsearch/elasticsearch:8.11.3
docker push  ${REGISTRY}/elasticsearch/elasticsearch:8.11.3

docker pull infiniflow/ragflow:v0.15.1
docker tag infiniflow/ragflow:v0.15.1 ${REGISTRY}/infiniflow/ragflow:v0.15.1
docker push ${REGISTRY}/infiniflow/ragflow:v0.15.1

docker pull busybox:latest
docker tag busybox:latest ${REGISTRY}/busybox:latest
docker push ${REGISTRY}/busybox:latest

docker pull alpine:latest
docker tag alpine:latest ${REGISTRY}/alpine:latest
docker push ${REGISTRY}/alpine:latest
