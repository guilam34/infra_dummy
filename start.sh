#!/bin/bash
app="flask-hello-world"
docker build -t ${app}:latest .
docker run -d -p 56733:80 \
  --name=${app} \
  -v $PWD:/app ${app}
