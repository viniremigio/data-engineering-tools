DUCKDB_VERSION=v1.0.0
IMAGE_NAME=duckdb:$(DUCKDB_VERSION)

build:
	docker build --build-arg DUCKDB_VERSION=$(DUCKDB_VERSION) -t $(IMAGE_NAME) .

run:
	docker run --name duckdb -it $(IMAGE_NAME) duckdb
