#!/bin/bash
if [[ $1 = 'start' ]] 
  then
   docker-compose -f docker-compose-static.yaml build && docker-compose -f docker-compose-static.yaml up -d
elif [[ $1 = 'stop' ]] 
  then
  docker-compose -f docker-compose-static.yaml stop && docker-compose -f docker-compose-static.yaml rm -f
fi
