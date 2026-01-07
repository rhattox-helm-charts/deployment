#!/usr/bin/env bash

RELEASE_NAME=deployment-test
CHART_PATH=./deployment


echo "----- LINT ------"
helm lint ${CHART_PATH}
echo "-----      ------"
echo "----- TEMPLATE -----"
helm template ${RELEASE_NAME} ${CHART_PATH} --debug
echo "-----          ------"
echo "----- INSTALL -----"
helm install ${RELEASE_NAME} ${CHART_PATH} --dry-run --debug
echo "-----         ------"
