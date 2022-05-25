#!/bin/bash
set -e

if [[ "$(ls /data/validators/keys)" ]]; then
    echo "Keystore directory is not empty. Skipping." && exit 0
else
    mkdir -p /data/validator/keys /data/validator/passwords
    cd /keystore/validator_keys
    for key in *; do
        FILENAME=`echo ${key} | sed 's/.json//g'`
        cp ${key} "/data/validator/keys/${FILENAME}.json"
        cp ../keystore_password.txt "/data/validator/passwords/${FILENAME}.txt"
        echo "Copying ${key}"
    done
fi