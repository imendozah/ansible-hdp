#!/usr/bin/env bash

source $(dirname "${BASH_SOURCE[0]}")/set_cloud.sh
source $(dirname "${BASH_SOURCE[0]}")/set_inventory.sh

ansible-playbook "playbooks/install_ambari.yml" \
                 --inventory="inventory/${inventory_to_use}" \
                 --extra-vars="cloud_name=${cloud_to_use} ansible_sudo_pass=admcuc" \
                 "$@"
