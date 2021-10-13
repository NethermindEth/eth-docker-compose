# Running Teku validator client

- [x] Go to teku validator directory

```sh
cd incentive-program/validator/teku
```

- [x] Modify `incentive-program/validator/teku/.env` file according to your needs
```sh
CC_NODE=
GRAFFITI=Nethermind
```
- [x] Create keystore and secrets sub-directory
```sh
mkdir keystore && mkdir keystore/secrets
```

- [x] Copy `keystore-m*` files to `keystore` and it's corresponding password files `keystore-m*.txt` to `keystore/secrets`

- [x] Modify `incentive-program/validator/teku/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
docker-compose up -d
```