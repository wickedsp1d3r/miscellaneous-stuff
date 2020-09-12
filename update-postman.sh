#!/usr/bin/env bash

TMPFILE=$(mktemp)
curl --compressed -fLJ -o "$TMPFILE" https://dl.pstmn.io/download/latest/linux64

if [[ -f "$TMPFILE" ]]; then
  sudo tar -xzf "$TMPFILE" -C /opt/postman
fi
