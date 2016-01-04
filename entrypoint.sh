#!/bin/bash

# server        	the address your server listens
# server_port   	server port
# local_address 	the address your local listens
# local_port    	local port
# password      	password used for encryption
# timeout       	in seconds
# method        	default: "aes-256-cfb", see Encryption
# fast_open     	use TCP_FASTOPEN, true / false
# workers       	number of workers, available on Unix/Linux

ssserver -s ${SS_SERVER_ADDR} -p ${SS_SERVER_PORT} -k ${SS_PASSWORD} \
         -m $SS_METHOD -t $SS_TIMEOUT --workers ${SS_WORKERS}
