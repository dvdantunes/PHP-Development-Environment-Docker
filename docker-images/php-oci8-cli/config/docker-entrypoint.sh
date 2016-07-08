#!/bin/bash
set -e

for init in /config/init*; do
  source "$init"
done

cd -P /data/http/..

if [[ $1 = 'bash' ]]; then
  exec "$@"
else
  HOME=/data/.home exec gosu core php "$@"
fi
