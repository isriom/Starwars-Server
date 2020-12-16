#!/bin/bash

echo "build npm"
npm run build

echo "build docker"
docker build . -t starwars-server

echo "complete"