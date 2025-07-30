#!/bin/bash

set -e

echo "Waiting for Elasticsearch to be ready..."
echo "$ELASTIC_PASSWORD"
echo "$KIBANA_SYSTEM_PASSWORD"

until curl -s -u elastic:"$ELASTIC_PASSWORD" http://localhost:9200 >/dev/null; do
  echo "Elasticsearch is not ready yet..."
  sleep 2
done

echo "Elasticsearch is up, setting user passwords..."

# 设置 kibana_system 密码
curl -s -u elastic:"$ELASTIC_PASSWORD" -X POST "http://localhost:9200/_security/user/kibana_system/_password" \
  -H "Content-Type: application/json" \
  -d "{\"password\": \"$KIBANA_SYSTEM_PASSWORD\"}"

# 设置 logstash_internal 密码
# curl -s -u elastic:"$ELASTIC_PASSWORD" -X POST "http://localhost:9200/_security/user/logstash_internal/_password" \
#   -H "Content-Type: application/json" \
#   -d "{\"password\": \"$LOGSTASH_INTERNAL_PASSWORD\"}"

echo "User password setup completed."
