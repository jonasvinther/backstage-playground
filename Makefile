.PHONY: create-app build-image

create-app:
	# npx @backstage/create-app --version
	npx @backstage/create-app

build-image:
	yarn install
  yarn tsc
  yarn build
	yarn workspace backend build-image

all: create-app build-image