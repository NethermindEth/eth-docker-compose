# Running Prysm validator client

- [x] Go to prysm validator directory

```sh
cd incentive-program/validator/prysm
```

- [x] Modify `incentive-program/validator/prysm/.env` file according to your needs
```
NETWORK=prater
CC_NODE=
GRAFFITI=Nethermind
LOG_LEVEL=info
```
- [x] Download `prysm.sh` script to manage account wallet
```sh
curl https://raw.githubusercontent.com/prysmaticlabs/prysm/master/prysm.sh --output prysm.sh && chmod +x prysm.sh
```
- [x] Create a wallet dir and wallet password
```sh
mkdir wallet
export PASSWORD=some_password
echo $PASSWORD > wallet/password.txt
```

- [x] Create a non-HD wallet
```sh
./prysm.sh validator wallet create --wallet-dir=$HOME/incentive-program/validator/prysm/wallet --wallet-password-file=$HOME/incentive-program/validator/prysm/wallet/password.txt --keymanager-kind=direct
```

- [x] Import keys
```sh
./prysm.sh validator accounts import --keys-dir=$HOME/incentive-program/validator/prysm/keys --wallet-password-file=$HOME/incentive-program/validator/prysm/wallet/password.txt --wallet-dir=$HOME/incentive-program/validator/prysm/wallet
```
- [x] Modify `incentive-program/validator/prysm/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
docker-compose up -d
```