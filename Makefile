.PHONY: build
build:
	docker build -t registry.0xdad.com/rsync-ssh-server:latest .

.PHONY: deploy
deploy: build
	docker push registry.0xdad.com/rsync-ssh-server:latest
