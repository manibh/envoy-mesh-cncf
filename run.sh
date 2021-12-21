#!/bin/bash
docker run --rm -it --name myenvoy \
      -v $PWD:/opt/envoy \
      -p 9901:9901 \
      -p 10000:10000 \
      --network mani \
      envoyproxy/envoy-dev:latest \
          -c /opt/envoy/envoy-dyn.yaml \
          -l debug
