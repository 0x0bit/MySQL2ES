ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION:-9.0.3}
# 如果需要kibana，则需要执行该脚本，为kibana设置登录密码
COPY init-users.sh /usr/local/bin/init-users.sh
# RUN chmod +x /usr/local/bin/init-users.sh

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

# 后续如果用到这个参数，这里需要重设这个参数，因为上一个在from执行完成之后会被删掉
ARG ELASTIC_VERSION
# 安装ik分词器
RUN elasticsearch-plugin install --batch https://get.infini.cloud/elasticsearch/analysis-ik/${ELASTIC_VERSION:-9.0.3}
