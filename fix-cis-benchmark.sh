#!/bin/bash
# Copyright 2024 FPT Cloud - PaaS

KUBELET_SVC="/etc/systemd/system/kubelet.service"
KUBELET_CONFIG="/var/lib/kubelet/config/kubelet"
CLIENTCA_FILE="/var/lib/kubelet/ca.crt"
echo "Ensure that the kubelet service file permissions are set to 600"
if [[ ! -f "${KUBELET_SVC}" ]]; then
  echo "Kubelet service file ${KUBELET_SVC} not found."
else
  chmod 600 $KUBELET_SVC
fi

echo "If the kubelet config.yaml configuration file is being used validate permissions set to 600"
if [[ ! -f "${KUBELET_CONFIG}" ]]; then
  echo "Kubelet config file ${KUBELET_CONFIG} not found."
else
  chmod 600 $KUBELET_CONFIG
fi

echo "Ensure that the certificate authorities file permissions are set to 600 or more restrictive"
if [[ ! -f "${CLIENTCA_FILE}" ]]; then
  echo "Client CA file ${CLIENTCA_FILE} not found."
else
  chmod 600 $CLIENTCA_FILE
fi
echo "Fix file permissions of worker node FPTCLOUD Successfully"
