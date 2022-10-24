# YetiNet

## Setup

1. Create new Ethereum account
2. Add address to `.env` as `SIGNER=ADDRESS`
3. Add private key to `.chaindata/private.key` (without leading `0x`)
4. Add a new password to `.chaindata/password.key`
5. `make chain-init`

## Running

### Miner

```bash
$ make chain-miner
```
