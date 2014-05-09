#!/bin/bash

export LD_LIBRARY_PATH=../../../src/usr/

server_ip=192.168.1.66
port=1234
core=1
ivec=0
ovec=1
hdrlen=0


#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 0		-l ${ovec} -g ${ivec} ${server_ip}
./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 1024		-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 4096	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 8192	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 16384	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 32768	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 65536	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 131072	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 262144	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 524288	-l ${ovec} -g ${ivec} ${server_ip}
#./xio_client -c ${core} -p ${port} -n ${hdrlen} -w 1048576	-l ${ovec} -g ${ivec} ${server_ip}


