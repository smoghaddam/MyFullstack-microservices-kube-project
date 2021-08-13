#!/usr/bin/env bash
set -o nounset
set -o errexit
set -o xtrace

PORT=$(kubectl get services/eli-service -o go-template='{{(index .spec.ports 0).nodePort}}')
echo "Port: $PORT"

# POST method predict
curl -d '{
   "CHAS":{
      "0":0
   },
   "RM":{
      "0":6.575
   },
   "TAX":{
      "0":296.0
   },
   "PTRATIO":{
      "0":15.3
   },
   "B":{
      "0":396.9
   },
   "LSTAT":{
      "0":4.98
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://$(minikube ip):$PORT/predict
