#!/usr/bin/bash

set -o errexit
set -o nounset
set -o pipefail

if [[ "$#" -ne 1 ]]
then
  echo "usage: $0 INSTALL_DIR"
  exit 1
fi

SRC_DIR="$(dirname "${BASH_SOURCE}")"

INSTALL_DIR="$1"
shift 1


FLAME_GRAPH_INSTALL="$INSTALL_DIR/bin/flamegraph"

echo '-- install flamegraph'
cp "${SRC_DIR}/flamegraph.pl" "$FLAME_GRAPH_INSTALL"
chmod u+x "$FLAME_GRAPH_INSTALL"
