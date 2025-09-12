set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SSL_DIR="$SCRIPT_DIR/ssl"

mkdir -p "$SSL_DIR"
cd "$SSL_DIR"

openssl genrsa -out localhost.key 2048
openssl req -x509 -new -nodes \
  -key localhost.key \
  -sha256 -days 365 \
  -out localhost.crt \
  -subj "/C=US/ST=State/L=City/O=MyOrg/OU=Dev/CN=localhost"

echo "✅ Created SSL certs in $SSL_DIR"
ls -l
