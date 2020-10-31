#!/usr/bin/env bash

TMPFILE=$(mktemp)

echo "Downloading the latest Postman..."
curl -LJ -o "$TMPFILE" https://dl.pstmn.io/download/latest/linux64

if [[ -f "$TMPFILE" ]]; then
  echo "Copying new Postman..."
  sudo tar -xzf "$TMPFILE" -C /opt/postman
fi
