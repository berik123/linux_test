#!/bin/bash
# Инициализация PKI и создание корневого сертификата
EASYRSA_DIR="/home/$(whoami)/easy-rsa"

if [ ! -d "$EASYRSA_DIR/pki" ]; then
  mkdir -p "$EASYRSA_DIR"
  ln -s /usr/share/easy-rsa/* "$EASYRSA_DIR/"
  cd "$EASYRSA_DIR" || exit
  ./easyrsa init-pki
  ./easyrsa build-ca nopass
else
  echo "PKI уже инициализировано."
fi
