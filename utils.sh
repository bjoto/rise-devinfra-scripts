is_dryrun() {
    if [[ "$1" == "-d" ]]; then
	echo 1
    fi
    echo 0
}

create_vm() {
    dry=$1

    name=$(basename $(readlink -f $d))
    fullname=rise-$name

    for i in $(seq -w 1 $num_hosts); do
	cmd="hcloud server create --ssh-key bjorn@rivosinc.com \
		       --name $fullname-$i \
		       --type $server_type --image $image  \
	               --user-data-from-file $d/cloud-init.conf"
	echo Running: $cmd
	if (( ! $dry )); then
	    $cmd
	fi
    done
}
