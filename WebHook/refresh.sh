#!/bin/bash
docker pull dtown12/dtown-1:latest
docker stop docker-website
docker rm docker-website
docker run --name docker-website -d -p 80:80 dtown12/dtown-1:latest
