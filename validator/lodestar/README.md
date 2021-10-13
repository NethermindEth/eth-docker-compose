# Running Lodestar validator client

- [x] Go to lodestar validator directory

```sh
cd incentive-program/validator/lodestar
```

- [x] Modify `incentive-program/validator/lodestar/.env` file according to your needs
```sh
NETWORK=prater
LOG_LEVEL=info
CC_NODE=
```
- [x] Create keystore directory
```sh
mkdir keystore
```
- [x] Copy `keystore-m*` files to `keystore`
- [x] Create `password.txt` and fill file with a password for keys inside `keystore` directory
```sh
touch keystore/password.txt
```
- [x] Run docker-compose stack
```sh
docker-compose up -d
```