#!/bin/sh

OUTPUT=$(mktemp)

node scripts/typings.js --spec lib/specs/swagger-1.22.json.gz --output $OUTPUT

diff -Naur typings/index.d.ts $OUTPUT
