#!/bin/bash

data=$1
url=http://localhost:8080/orders

curl -d "$data" -H "Content-Type: application/json" -X POST ${url}
