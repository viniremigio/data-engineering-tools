.PHONY: airbyte/run

airbyte/start:
	docker compose -f airbyte-docker-compose.yml up -d

airbyte/rebuild:
	docker compose -f airbyte-docker-compose.yml up --build -d

airbyte/stop:
	docker compose -f airbyte-docker-compose.yml down