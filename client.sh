#!/bin/bash
CLIENT_NAME=$1

if [ -z "$CLIENT_NAME" ]; then
  echo "Укажите имя клиента для сертификата."
  exit 1
fi

cd "$EASYRSA_DIR" || exit
./easyrsa gen-req "$CLIENT_NAME" nopass
./easyrsa sign-req client "$CLIENT_NAME"
