# Running Lodestar consensus client

- [x] Modify `incentive-program/consensus/lodestar/.env` file according to your needs
```
# Network on which the client will be running
NETWORK=prater
# Logging level
LOG_LEVEL=info
# Execution client JSON RPC endpoint
EC_NODE=
# Whether to run lodestar with an initial state
LS_RAPID_SYNC=false
```

- [x] Modify `incentive-program/consensus/lodestar/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
cd incentive-program/consensus/lodestar
docker-compose up -d
```