#!/bin/bash

cd apache/
docker build -t apache .
cd ..
cd cron/
docker build -t cron .
cd ..
docker-compose up -d
docker ps