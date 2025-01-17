#!/bin/bash

set -euo pipefail
d=$(dirname "${BASH_SOURCE[0]}")
. $d/../utils.sh

server_type="ccx63"
image="ubuntu-24.04"
num_hosts=4

create_vm $(is_dryrun "${1:-}")
