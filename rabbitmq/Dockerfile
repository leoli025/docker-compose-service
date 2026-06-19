FROM rabbitmq:4.2-management

# 将本地的插件文件复制到镜像内的插件目录
ADD ./plugins/rabbitmq_delayed_message_exchange-4.2.0.ez /plugins/

# 在构建镜像时，直接启用该插件
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

# 容器启动时默认执行的命令
ENTRYPOINT ["rabbitmq-server"]