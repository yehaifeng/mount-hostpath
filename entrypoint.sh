#!/bin/sh
set -e

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- sh "$@"
fi

if [ -d /script ]; then
    for f in $(find /script -type f -name *.sh); do
        source $f
    done
fi

exec "$@"
