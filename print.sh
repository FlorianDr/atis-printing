#!/usr/bin/env bash

set -e

filename=$(basename $1)
printer=pool-sw1
printpath="~/.print"

echo 'Check or create print folder'
ssh atis "mkdir -p ${printpath}"

scp "$1" atis:$printpath/$filename
echo 'Finished file transfer'

ssh atis "lpr -P ${printer} ${printpath}/${filename}"
echo "Queued print job on ${printer}"
