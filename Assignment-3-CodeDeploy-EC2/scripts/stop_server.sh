#!/bin/bash
set +e
if command -v systemctl >/dev/null 2>&1; then
  systemctl stop httpd 2>/dev/null || systemctl stop apache2 2>/dev/null || true
else
  service httpd stop 2>/dev/null || service apache2 stop 2>/dev/null || true
fi
exit 0
