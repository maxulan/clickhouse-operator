#!/bin/bash

CHOPERATOR_NAMESPACE="${CHOPERATOR_NAMESPACE:-dev}"

#INSTALL_FROM_ALTINITY_RELEASE_DOCKERHUB="${INSTALL_FROM_ALTINITY_RELEASE_DOCKERHUB:-yes}"
INSTALL_FROM_ALTINITY_RELEASE_DOCKERHUB="${INSTALL_FROM_ALTINITY_RELEASE_DOCKERHUB:-no}"

#INSTALL_FROM_DEPLOYMENT_MANIFEST="${INSTALL_FROM_DEPLOYMENT_MANIFEST:-yes}"
INSTALL_FROM_DEPLOYMENT_MANIFEST="${INSTALL_FROM_DEPLOYMENT_MANIFEST:-no}"

# In case both INSTALL_* options are "no" we are going to run operator manually, not from dockerhub

if [[ "${INSTALL_FROM_ALTINITY_RELEASE_DOCKERHUB}" == "yes" ]]; then
    CHOPERATOR_IMAGE="altinity/clickhouse-operator:latest"
fi

if [[ "${INSTALL_FROM_DEPLOYMENT_MANIFEST}" == "yes" ]]; then
    CHOPERATOR_IMAGE="sunsingerus/clickhouse-operator:dev"
fi
