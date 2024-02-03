.PHONY: start

start:
	docker compose up -d home-assistant mqtt5

check-update:
	docker compose pull home-assistant 2>&1 | tee /dev/stderr | grep -q "Pulling fs layer"
	if [ $? -eq 0 ]
	then
		echo "hello"
		# docker compose up -d --force-recreate home-assistant
	fi
