#!/bin/bash

if [ $# -eq 0 ]
then
    echo "run.sh need a WarpScript file"
    exit 1
fi

if [[ -z $WARP10_ENDPOINT ]]
then
  echo "You must set a Warp10 endpoint"
  echo "ex: $ export WARP10_ENDPOINT=https://warp10.instance.fr"
  exit 1
fi

time curl -s -s -X POST "${WARP10_ENDPOINT}/api/v0/exec" -d "$(cat $1)"
