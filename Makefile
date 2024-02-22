ERIGON_IMAGE_TAG=2.58.0-arm64

up-arm64:
	ERIGON_IMAGE_TAG=$(ERIGON_IMAGE_TAG) docker compose up -d

clean:
	docker ps -a -q | xargs docker rm -f
	sudo rm -rf ./consensus/beacondata* ./consensus/validatordata ./consensus/genesis.ssz
	sudo rm -rf ./execution/geth ./execution/erigon
