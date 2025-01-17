# RISE DevInfra helper scripts

Each project is contained in it's own subdirectory. Modify the
`cloud-init.conf`, and run create-vm.sh.

A dryrun is done by adding `"-d"`, e.g.:
```
for i in */; do pushd $i; ./create-vm.sh -d; popd; done
```
to review everything.
