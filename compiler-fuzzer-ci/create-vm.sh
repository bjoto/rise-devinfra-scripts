#!/bin/bash

set -euo pipefail
d=$(dirname "${BASH_SOURCE[0]}")
. $d/../utils.sh

server_type="ccx63"
image="ubuntu-20.04"
num_hosts=2

create_vm $(is_dryrun "${1:-}")
