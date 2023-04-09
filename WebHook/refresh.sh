#!/bin/bash
docker pull dtown12/dtown-1:latest
docker stop dtown12/dtown-1
docker rm dtown12/dtown-1
docker run --name docker-website -d -p 80:80 dtown12/dtown-1:latest
