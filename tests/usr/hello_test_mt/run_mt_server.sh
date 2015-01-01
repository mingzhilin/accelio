#!/bin/bash

# Get Running Directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR


# Arguments Check
if [ $# -lt 2 ]; then
        echo "[$0] Missing Parameters!"
        echo "Usage: $0 Server-IP Port [0 for infinite run and 1 for finite. default is 0] [data_len. default=0] [transport. default=rdma]"
        exit 1
fi

export LD_LIBRARY_PATH=../../../src/usr/

server_ip=$1
port=$2

#running indefinitely
if [ -z "$3" ]
then
	#running indefinitely
	finite_run="0"
else
	finite_run=$3
fi

if [ -z "$4" ]
then
	data_len="0"
else
	data_len=$3
fi

if [ -z "$5" ]
then
	trans="rdma"
else
	trans=$4
fi

./xio_mt_server -c 1 -p ${port} -r ${trans} -n 0 -w ${data_len} -f ${finite_run} ${server_ip} 

