#!/bin/sh

GASTRONAMUS_CURRENT_DIR="$(cd "$(dirname "$0")" && pwd -P)"
GASTRONAMUS_UPDATE_DIR="$GASTRONAMUS_CURRENT_DIR/update/"

for f in $(ls "$GASTRONAMUS_UPDATE_DIR"); do
    "$GASTRONAMUS_UPDATE_DIR$f"
done
