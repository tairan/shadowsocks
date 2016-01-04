# Shadowsocks

## Install

	docker pull docker.io/tairan/shadowsocks:latest

# Run

	docker run --name shadowsocks --restart always \
               -e "SS_METHOD=aes-256-cfb" \
               -e "SS_PASSWORD=Passw0rd"  \
               -e "SS_WORKERS=10"  \
               -d docker.io/tairan/shadowsocks
