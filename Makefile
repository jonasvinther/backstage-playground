.PHONY: create-app build-image start-backstage stop-backstage

create-app:
	npx @backstage/create-app

build-image:
	cd backstage && yarn install
	cd backstage && yarn tsc
	cd backstage && yarn build
	cd backstage && yarn build-image --tag backstage:latest

start-backstage:
	docker-compose up -d

stop-backstage:
	docker-compose down

all: create-app build-image