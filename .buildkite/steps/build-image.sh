#!/bin/bash

export REVISION=${BUILDKITE_COMMIT:=$(git rev-parse HEAD)}
echo "REVISION: $REVISION"

docker build -t neonlabsorg/solana-accountsdb:${REVISION} .
docker build -t neonlabsorg/accountsdb:${REVISION} ./scripts
