#!/usr/bin/env bash

test -d .env || virtualenv .env
.env/bin/pip install pytest pytest-xdist

# Build an image with SSH server and Docker to mimic a remote SSH host
docker build . --tag remote-node

# Run an ssh server
docker run --rm --name run-remote-node -v /var/run/docker.sock:/var/run/docker.sock -d -p 2222:22 remote-node

# Run tests on the ssh server
# Will error: ModuleNotFoundError: No module named 'pluggy'
.env/bin/pytest tests -d -vvv \
    --rsyncdir tests \
    --max-worker-restart=0 \
    --tx='ssh=root@127.0.0.1 -p 2222 -o StrictHostKeyChecking=no//python=python3'

docker stop run-remote-node
