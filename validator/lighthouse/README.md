# Running Lighthouse validator client

- [x] Go to lighthouse validator directory

```sh
cd incentive-program/validator/lighthouse
```

- [x] Modify `incentive-program/validator/lighthouse/.env` file according to your needs
```sh
NETWORK=prater
CC_NODE=
GRAFFITI=Nethermind
LOG_LEVEL=info
```
- [x] Create keystore and secrets sub-directory
```sh
mkdir keystore && mkdir keystore/secrets
```
- [x] Copy `keystore-m*` files to `keystore` and it's corresponding password files `voting_public_key` to `keystore/secrets`

- [x] Modify `incentive-program/validator/lighthouse/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
docker-compose up -d
```