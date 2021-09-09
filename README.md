# backstage-playground

## Prerequisites

Install latest LTS version of Node.js https://nodejs.org/en/download/

Install yarn `npm install --global yarn`

## How To

### Create the Backstage App

Create your backstage app: `make create-app`.  
You will be asked to name your Backstage app. Enter the name `backstage`.

### Build a Docker image containing your Backstage app

We want to run our Backstage app in a container. Run `make build-image` to build your backstage Docker image.

### Setup the environment

The following environment variables is needed in order to run Backstage.

``` bash
export GITHUB_TOKEN="xxx"
export AUTH_GITHUB_CLIENT_ID="xxx"
export AUTH_GITHUB_CLIENT_SECRET="xxx"
```
`GITHUB_TOKEN` can be obtained by creating a [Personal Access Token](https://github.com/settings/tokens). The token needs permission to `repo` and `workflow`.

`AUTH_GITHUB_CLIENT_ID` and `AUTH_GITHUB_CLIENT_SECRET` can be obtained by creating a [OAuth Application](https://github.com/settings/developers).

### Start backstage

Run `make start-backstage` to run Backstage using docker-compose.  
The backstage UI is now accessible using [http://localhost:7000](http://localhost:7000)

## Stop Backstage

To terminate the docker-compose process, run `make stop-backstage`.