#!/usr/bin/env bash

for i in /var/log/dnscrypt-proxy/*; do
  echo -n "" >"$i"
done

for i in /var/log/unbound/*; do
  echo -n "" >"$i"
done

for i in /var/log/tinyproxy/*; do
  echo -n "" >"$i"
done
