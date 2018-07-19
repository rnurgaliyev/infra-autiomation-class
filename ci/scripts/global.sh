#!/bin/sh

set -e

# Install ssh private key
if [ -z "SSH_KEY" ]; then
    exit 1
else
    echo $SSH_KEY > /root/.ssh/id_rsa
    chmod 600 /root/.ssh/id_rsa
fi

ls -la ~/.ssh/