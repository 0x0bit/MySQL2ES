# 基于binlog的异构数据库数据同步解决方案


 MySQL → Maxwell → RabbitMQ → Logstash → Elasticsearch 的数据同步链路

 ```
 MySQL (binlog) 
   ↓
Maxwell (producer: rabbitmq)
   ↓
RabbitMQ (maxwell 发送 JSON 消息)
   ↓
Logstash (input from rabbitmq, output to Elasticsearch)
   ↓
Elasticsearch
```