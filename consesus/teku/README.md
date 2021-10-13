# Running Teku consensus client

- [x] Modify `incentive-program/consensus/teku/.env` file according to your needs
```
NETWORK=prater
EC_NODE=
#TEKU_RAPID_SYNC=<INFURA_URL>/eth/v1/debug/beacon/states/finalized
TEKU_PEER_COUNT=74
LOG_LEVEL=info
```

- [x] Modify `incentive-program/consensus/teku/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
cd incentive-program/consensus/teku
docker-compose up -d
```