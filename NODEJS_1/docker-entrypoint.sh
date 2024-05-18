#!/bin/sh
set -e

if [ "$NODE_ENV" != "production" ]; then
  exec /bin/sh
else
  exec "$@"
fi

