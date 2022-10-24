.PHONY: chain-init, chain-miner

chain-init:
	sh chain/init.sh

chain-miner:
	docker compose up chain-miner