# dpl Example with Heroku
This repo is an example with a very simple node.js app and how to deploy that app to Heroku using [dpl|https://github.com/travis-ci/dpl]to deploy the app. You may have `dpl` on your machine or build a docker image to contain it. Before running `dpl` ensure you have created the app on Heroku either manually or using the API.

## Creating app on Heroku using API
```bash
curl -n \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3" \
  -d '{"name": "lekkim-fooapp"}' \
  https://api.heroku.com/apps
```

## Deleting app on Heroku using API
```bash
curl -n \
  -X DELETE \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3" \
  https://api.heroku.com/apps/lekkim-fooapp
````

## Building the image
```bash
docker build --tag lekkim/dpl-example . 
```

## Running the container
```bash
docker run --rm -it lekkim/dpl-example /bin/bash
```

## Running dpl in the container
```bash
cd /lekkim-fooapp
dpl heroku api --api_key=<heroku api key> --app lekkim-fooapp
```
