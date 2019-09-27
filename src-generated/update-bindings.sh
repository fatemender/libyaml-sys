#!/bin/sh

bindgen \
    --output bindings.rs \
    --no-prepend-enum-name \
    --whitelist-function '^yaml_(.*)$' \
    --whitelist-type '^yaml_(.*)$' \
    --no-recursive-whitelist \
    --no-doc-comments \
    --raw-line 'use libc::FILE;' \
    ../libyaml/include/yaml.h
