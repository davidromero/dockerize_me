#!/bin/bash

cd dockerized_me

curl -s "https://raw.githubusercontent.com/davidromero/dockerize_me/master/web_dev/Dockerfile" > Dockerfile

/usr/local/bin/docker build --tag web_dev_env:0.1 .
