# Running Nethermind execution client

- [x] Modify `incentive-program/execution/nethermind/.env` file according to your needs
```
NETWORK=mainnet_pruned
METRICS_URL=
NODENAME=
PRUNING_CACHEMB=4096
```

- [x] Run docker-compose stack
```sh
cd incentive-program/execution/nethermind
docker-compose up -d
```