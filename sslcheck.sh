#!/bin/bash

HOST=${1}
PORT=${2}


openssl s_client -connect ${HOST}:${PORT} -servername ${HOST} 2> /dev/null |  openssl x509 -noout  -dates