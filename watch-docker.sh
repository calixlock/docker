#!/bin/bash

count=1
while true
do
    if [ $count -eq 1 ]; then
        docker ps
    fi
    # docker ps --format '{{.ID}}\t{{.Image}}\t{{.Command}}\t{{.CreatedAt}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}'
    docker ps --format '{{.ID}}\t{{.Image}}\t{{.Command}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}'
    count=$((count + 1))
    sleep 2
done