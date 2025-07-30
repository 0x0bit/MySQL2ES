# 基于binlog的异构数据库数据同步解决方案


 MySQL → Maxwell → RabbitMQ → Logstash → Elasticsearch 的数据同步链路

 ```
+-------+      +---------+      +-----------+      +----------+      +---------------+
| MySQL |----->| Maxwell |----->| RabbitMQ  |----->| Logstash |----->| Elasticsearch |
+-------+      +---------+      +-----------+      +----------+      +---------------+
   ^                                                                       |
   |                                                                       |
 (Binlog)                                                                  |
                                                                           |
                                                                     +---------+
                                                                     | Kibana  |
                                                                     +---------+
```

## 修改各个模块的配置

- logstash/pipeline/logstash.conf
- maxwell/config/config.properties

## 启动
```
docker compose up -d
```