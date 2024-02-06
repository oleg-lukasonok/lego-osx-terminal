#!/bin/bash
#
# TOBE ADDED - Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

export NI_CERT_DIR=".certificates"

export NI_CA_KEY="root-ca.key"
export NI_CA_CERT="root-ca.pem"

export NI_CLIENT_KEY="client.key"
export NI_CLIENT_CERT_SIGN_REQ="client.csr"
export NI_CLIENT_CERT="client.pem"

export NI_TRUST_STORE="truststore.pem"
