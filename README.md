# README

A starter project rails  API with postgres, VueJS frontend, and NGINX serving as a proxy

## Components

1. Rails 5.2.0 API listening on port 3000
2. VueJS frontend with hot reloading listening on port 4000
3. NGINX serving as a proxy listening on port 8080

## Requirements

1. Docker
2. Docker compose

## Instructions

1. Start the application in the background: `docker-compose up -d`
2. Setup the database (if needed): `docker-compose run api bundle exec rails db:setup`
3. Tail the logs: `docker-compose logs -f`
4. Visit [http://localhost:8080]() which routes to the frontend or [http://localhost:8080/api]() which routes to the API

## Defined endpoints

The only defined endpoint is a heartbeat route on the API served via [http://localhost:8080/api/v1/status/heartbeat]()
