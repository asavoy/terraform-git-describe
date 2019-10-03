#!/usr/bin/env bash

set -euo pipefail

description="$(git describe --always --tags --long --dirty='*')"
description_json="${description//\"/\\\"}"

echo '{ "description": "'"$description_json"'" }'

