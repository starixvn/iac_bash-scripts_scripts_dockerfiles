#!/usr/bin/env sh
vault kv put -mount=nexops certs/$1 tls.crt=@/secret-volume/$1/tls.crt tls.key=@/secret-volume/$1/tls.key