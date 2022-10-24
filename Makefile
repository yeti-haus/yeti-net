.PHONY: chain-init, chain-miner

chain-init:
	./chain/init.sh

chain-miner:
	docker compose up chain-miner