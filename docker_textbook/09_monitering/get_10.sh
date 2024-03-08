#!/bin/bash

for i in {1..20};
do
  curl http://localhost:8010 > /dev/null;
  sleep 1;
done