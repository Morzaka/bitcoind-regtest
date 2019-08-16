#!/bin/bash
set -exm

bitcoind -deprecatedrpc=generate -regtest=1 -server=1 -txindex=1 -rpcbind=0.0.0.0:18443 -rpcallowip=::/0 -rpcpassword=pass -rpcuser=myusername &
sleep 5
bitcoin-cli -regtest -rpcpassword=pass -rpcuser=myusername generate 5
bitcoin-cli -regtest -rpcpassword=pass -rpcuser=myusername getbestblockhash
fg
