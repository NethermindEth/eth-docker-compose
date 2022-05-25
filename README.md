# eth-docker-compose

Set of docker-compose stacks for running Nethermind Client as an execution node with all Consensus Layer clients.

## Requirements
* docker-compose
* docker
* key generation scripts or tools

## How to deploy the stack
1. Copy `.env.example` to `.env`
```bash
CLIENT=lighthouse # Lowercased. Available options: lighthouse | teku | TODO
cp nethermind-$client/.env.example nethermind-$client/.env
```
2. Fill `.env` according to your needs
3. Create JWT
```bash
openssl rand -hex 32 | tr -d "\n" | base64 > jwtsecret
```
4. Use your key generation tool (e.g. [staking-deposit-cli](https://github.com/ethereum/staking-deposit-cli)) and create keystore directory with validator keys and associated password
```bash
mkdir -p keystore
cp -r ../../staking-deposit-cli/validator_keys keystore/validator_keys
```
5. Save password to `keystore/keystore_password.txt`
```bash
nano keystore/keystore_password.txt
```
6. Deploy
```bash
docker-compose up -d 
```