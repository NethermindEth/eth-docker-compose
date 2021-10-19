# Running Lighthouse consensus client

- [x] Modify `incentive-program/consensus/lodestar/.env` file according to your needs
```
# Network on which the client will be running
NETWORK=prater
# Number of peers
LH_PEER_COUNT=50
# Execution client JSON RPC endpoint
EC_NODE=
# Logging level
LOG_LEVEL=info
# Initial state endpoint for rapid sync e.g. infura eth2 endpoint
LH_RAPID_SYNC=
```

- [x] Modify `incentive-program/consensus/lighthouse/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
cd incentive-program/consensus/lighthouse
docker-compose up -d
```