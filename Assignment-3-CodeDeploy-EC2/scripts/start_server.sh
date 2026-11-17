#!/bin/bash
set -e
if command -v systemctl >/dev/null 2>&1; then
  if systemctl list-unit-files | grep -q '^httpd\.service'; then
    systemctl enable httpd
    systemctl restart httpd
  else
    systemctl enable apache2
    systemctl restart apache2
  fi
else
  service httpd start || service apache2 start
fi
