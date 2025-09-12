#!/bin/bash
set -e

mkdir -p /work/ssl
cd /work/ssl

openssl genrsa -out localhost.key 2048

openssl req -x509 -new -nodes \
  -key localhost.key \
  -sha256 -days 365 \
  -out localhost.crt \
  -subj "/C=US/ST=State/L=City/O=MyOrg/OU=Dev/CN=localhost"

echo "✅ Created SSL certs in $(pwd)"
ls -l
