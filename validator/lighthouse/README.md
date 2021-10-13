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
- [x] Create data dir
```sh
mkdir lhvalidator-data && chown -R ec2-user:ec2-user lhvalidator-data
```
- [x] Copy `keystore-m*` files to `keystore` and it's corresponding password files `voting_public_key` to `keystore/secrets`
- [x] Fill in `validator_definitions.yml` file with keys data
- [x] Move `keystore` to `lhvalidator-data` and `validator_definitions.yml` to `lhvalidator-data/validators`
```sh
mv keystore lhvalidator-data
mkdir lhvalidator-data/validators
mv validator_definitions.yml lhvalidator-data/validators/
```

- [x] Modify `incentive-program/validator/lighthouse/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
docker-compose up -d
```