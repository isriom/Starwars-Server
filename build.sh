#!/bin/bash

echo "start npm"
npm install

echo "build npm"
npm run build

echo "build docker"
docker build . -t isriom/starwars-server

echo "push docker"
docker login -u isriom -p $DOCKPASSWORD
docker push isriom/starwars-server

echo "complete"