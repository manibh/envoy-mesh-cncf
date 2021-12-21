#!/bin/bash
if [[ $1 = 'start' ]] 
  then
   docker-compose -f docker-compose.yaml build && docker-compose -f docker-compose.yaml up -d
elif [[ $1 = 'stop' ]] 
  then
  docker-compose -f docker-compose.yaml stop && docker-compose -f docker-compose.yaml rm -f
fi
