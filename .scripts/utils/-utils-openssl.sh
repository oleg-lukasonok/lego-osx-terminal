#!/bin/bash
#
# TOBE ADDED - Licence & Copyright Disclaimer
#
. ./.scripts/utils/-loggers.sh

_localStorage_resetCertificatesDirectory() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Reseting certificates folder --> ${NI_CERT_DIR}"
  _echoInfo "#     "

  rm -rf "${NI_CERT_DIR}"
  mkdir -p "${NI_CERT_DIR}"
}

_localStorage_generateCAPrivateKey() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Generate CA key --> ./${NI_CERT_DIR}/${NI_CA_KEY}"
  _echoInfo "#     "

  openssl genrsa \
    -out "./${NI_CERT_DIR}/${NI_CA_KEY}" 4096
}

_localStorage_generateCACertificate() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Generate CA certificate --> ./${NI_CERT_DIR}/${NI_CA_CERT}"
  _echoInfo "#     "

  openssl req -new \
    -x509 -days 3650 \
    -key "./${NI_CERT_DIR}/${NI_CA_KEY}" \
    -out "./${NI_CERT_DIR}/${NI_CA_CERT}"
}

_localStorage_generateClientPrivateKey() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Generate client key --> ./${NI_CERT_DIR}/${NI_CLIENT_KEY}"
  _echoInfo "#     "

  openssl genrsa \
    -out "./${NI_CERT_DIR}/${NI_CLIENT_KEY}" 2048
}

_localStorage_generateClientCertificateSignRequest() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Generate client cert sign req for client key --> ./${NI_CERT_DIR}/${NI_CLIENT_CERT_SIGN_REQ}"
  _echoInfo "#     "

  openssl req -new \
    -key "./${NI_CERT_DIR}/${NI_CLIENT_KEY}" \
    -out "./${NI_CERT_DIR}/${NI_CLIENT_CERT_SIGN_REQ}"
}

_localStorage_generateClientCertificate() {
  _echoInfoSeparator
  _echoInfo "#     "
  _echoInfo "#     Sign ${NI_CLIENT_CERT_SIGN_REQ} with ${NI_CA_KEY} + ${NI_CA_CERT}  --> Generate ${NI_CLIENT_CERT} client cert"
  _echoInfo "#     "

  openssl x509 -req \
    -in "./${NI_CERT_DIR}/${NI_CLIENT_CERT_SIGN_REQ}" \
    -CA "./${NI_CERT_DIR}/${NI_CA_CERT}" \
    -CAkey "./${NI_CERT_DIR}/${NI_CA_KEY}" \
    -set_serial 01 \
    -out "./${NI_CERT_DIR}/${NI_CLIENT_CERT_SIGN_REQ}" \
    -days 3650 \
    -sha256
}

_localStorage_generateTrustStore() {
  _echoInfoSeparator
  _echoInfo " #     "
  _echoInfo "#     Create a Trust Store --> ./${NI_CERT_DIR}/${NI_TRUST_STORE}"
  _echoInfo "#      "

  cp \
    "./${NI_CERT_DIR}/${NI_CA_CERT}" \
    "./${NI_CERT_DIR}/${NI_TRUST_STORE}"
}

_localStorage_generateCertificates() {

  _localStorage_resetCertificatesDirectory

  _localStorage_generateCAPrivateKey
  _localStorage_generateCACertificate

  _localStorage_generateClientPrivateKey
  _localStorage_generateClientCertificateSignRequest
  _localStorage_generateClientCertificate

  _localStorage_generateTrustStore
  _echoInfoSeparator
}
