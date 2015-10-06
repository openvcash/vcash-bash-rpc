#!/bin/bash
method='getinfo'
params='[]'
id=`openssl rand -base64 32 | sed 's/[^0-9]//g'`

while getopts ":m:p:" o; do
    case "${o}" in
        m)
            method=${OPTARG}
            ;;
        p)
            if [[ "${OPTARG}" == \{* ]] ;
            then
                params=${OPTARG}
            else
                params="[\"${OPTARG}\"]"
            fi
            ;;
        *)
            echo "Usage: ./rpc.sh -m <method> -p <params> | ./rpc.sh -m getincentiveinfo | ./rpc.sh -m getblockhash -p 1 | ./rpc.sh -m listreceivedbyaccount -p '{\"minconf\":1,\"includeempty\":true}'"
            exit 1
            ;;
    esac
done

#set -x
curl -sS --data-binary '{"jsonrpc":"1.0", "id":"'$id'", "method":"'$method'", "params":'$params'}' -H 'content-type: text/plain;' http://127.0.0.1:9195/ | jq
