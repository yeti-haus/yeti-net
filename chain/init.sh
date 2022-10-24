#!/bin/zsh

if [ ! -d ".chaindata/client/.ethereum" ]
then
  # setup directories
  mkdir -p .chaindata
  mkdir -p .chaindata/client
  mkdir -p .chaindata/miner
  cp chain/genesis.json .chaindata/genesis.json

  # setup client
  docker run -v "$(pwd)"/.chaindata:/root ethereum/client-go --datadir /root/client init /root/genesis.json

  # setup miner
  docker run -v "$(pwd)"/.chaindata:/root ethereum/client-go init --datadir /root/miner /root/genesis.json
  docker run -v "$(pwd)"/.chaindata:/root ethereum/client-go --datadir /root/miner account import --password /root/password.key /root/private.key
fi