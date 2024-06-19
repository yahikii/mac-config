#!/bin/bash

# Ensure pipx is in PATH
export PATH="$PATH:$HOME/.local/bin"

# Install applications using pipx
pipx install --include-deps ansible

# Inject packages to ansible
pipx inject ansible hvac
pipx inject ansible requests
pipx inject ansible pyvmomi
pipx inject ansible pywinrm
