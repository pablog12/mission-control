#!/bin/sh
export OPENCLAW_ALLOW_INSECURE_PRIVATE_WS=1

if [ "$1" = "gateway" ] && [ "$2" = "call" ]; then
  exec /usr/local/bin/openclaw "$@" \
    --url "ws://${OPENCLAW_GATEWAY_HOST:-172.18.0.1}:${OPENCLAW_GATEWAY_PORT:-28473}" \
    --token "${OPENCLAW_GATEWAY_TOKEN}"
else
  exec /usr/local/bin/openclaw "$@"
fi
