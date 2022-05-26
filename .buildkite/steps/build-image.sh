#!/bin/bash

REVISION=${BUILDKITE_COMMIT:=$(git rev-parse HEAD)}
echo "REVISION: $REVISION"

docker build -t neonlabsorg/solana-accountsdb:${REVISION} .
