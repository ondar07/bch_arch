#!/bin/bash

# kill any stale or active containers
docker rm -f $(docker ps -aq)

# clear any cached networks
docker network prune

docker volume prune

#rm -rf hfc-key-store

docker image rm dev-peer1-org1-mycc-1.0-6197b07806b619d1c3d8fe1cf7cbbc1bf22dbb309b8bcb2713e34545de6965ba
docker image rm dev-peer1-org2-mycc-1.0-c4f6f043734789c3ff39ba10d25a5bf4bb7da6be12264d48747f9a1ab751e9fe
docker image rm dev-peer1-org3-mycc-1.0-d1984851da3b82b2e4b489d36db32e64953a7878bb9d222c8cbf7c2aefaaf835
