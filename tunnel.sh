#!/bin/bash
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
while true; do
  setsid ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=30 \
    -o ExitOnForwardFailure=yes \
    -R 80:localhost:8000 nokey@localhost.run \
    > "$BASE_DIR/tunnel_url.txt" 2>&1
  sleep 10
done
