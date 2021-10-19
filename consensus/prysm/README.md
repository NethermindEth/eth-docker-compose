# Running Prysm consensus client

- [x] Modify `incentive-program/consensus/prysm/.env` file according to your needs
```
NETWORK=prater
EC_NODE=
EC_FALLBACK_NODE1=
EC_FALLBACK_NODE2=
LOG_LEVEL=info
```

- [x] Modify `incentive-program/consensus/prysm/prometheus/prometheus.yml` file with the remote_write username and password

- [x] Run docker-compose stack
```sh
cd incentive-program/consensus/prysm
docker-compose up -d
```