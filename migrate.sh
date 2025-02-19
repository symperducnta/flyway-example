#!/bin/bash

# create postgres server
docker-compose -f 'infrastructure/docker-compose-infra.yml' --env-file .env up -d

# migrate
docker-compose -f 'infrastructure/docker-compose-flyway.yml' run --rm flyway migrate