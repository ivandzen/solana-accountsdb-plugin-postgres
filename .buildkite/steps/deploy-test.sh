#!/bin/bash

export REVISION=${BUILDKITE_COMMIT:=$(git rev-parse HEAD)}
echo "REVISION: $REVISION"

docker-compose up -d
