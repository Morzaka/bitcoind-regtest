# regtest-bitcoind-docker

A Docker image containing `bitcoind` running in regtest mode like a server, so you can use JSON-RPC requests. 

The image will start up `bitcoind` with parameters:
> -regtest=1 
> -server=1
> -txindex=1
> -rpcbind=0.0.0.0:18443
> -rpcallowip=::/0
> -rpcpassword=pass
> -rpcuser=myusername

For details see `init.sh` file.

## Installation

```
docker pull lyubomyr/bitcoin-regtest:18.0
```

### Dockerhub:

Image is available on dockerhub: <https://hub.docker.com/r/lyubomyr/bitcoin-regtest>

### Building

Build docker image:
 
```bash
docker build . -t lyubomyr/bitcoin-regtest:latest
```
