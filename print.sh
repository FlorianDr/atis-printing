#!/usr/bin/env bash

set -e

filename=$(basename $1)

echo 'Copy file to destination'
scp $1 atis:~/print/$filename

echo 'Queue print job'
ssh atis "lpr -P pool-sw1 print/${filename}"

echo 'Finished printing'
