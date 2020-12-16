#!/bin/bash

echo "start npm"
npm install

echo "build npm"
npm run build

echo "build docker"
docker build . -t starwars-server

echo "complete"