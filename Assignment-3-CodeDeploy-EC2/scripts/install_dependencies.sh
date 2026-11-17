#!/bin/bash
set -e
if command -v dnf >/dev/null 2>&1; then
  dnf install -y httpd
elif command -v yum >/dev/null 2>&1; then
  yum install -y httpd
elif command -v apt-get >/dev/null 2>&1; then
  apt-get update
  DEBIAN_FRONTEND=noninteractive apt-get install -y apache2
else
  echo "Unsupported Linux package manager" >&2
  exit 1
fi
mkdir -p /var/www/html
