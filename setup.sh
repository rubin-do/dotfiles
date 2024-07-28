#!/bin/bash

verify_installed () {
		if ! command -v $1 &>/dev/null; then
				echo "$1 is not installed, install to proceed."
				exit 1
		fi
}

# verify python3 is installed
verify_installed python3

# verify ansible is installed
verify_installed ansible

# run ansible
ansible-playbook dev.yaml

