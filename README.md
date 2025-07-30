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

## 如何使用

参考文章 https://juejin.cn/post/7532387717273026603