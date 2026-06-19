<h1 align="center"><a href="https://github.com/leoli025/docker-compose-service" target="_blank">Docker Compose Service</a></h1>

## service 端口映射
| service    | local port     | container port | url                    |
|------------|----------------|----------------|------------------------|
| asynq      | 8088           | 8080           | -                      |
| jenkins    | 8080           | 8080           | http://localhost:8080  |
| mysql      | 3306           | 3306           | -                      |
| nginx      | 8090           | 80             | http://localhost:8090  |
| nsqlookupd | 4160<br/>4161  | 4160<br/>4161  | -                      |
| nsq1       | 4150<br/>4151  | 4150<br/>4151  | -                      |
| nsqadmin   | 4171           | 4171           | http://localhost:4171  |
| portainer  | 9000           | 9000           | http://localhost:9000  |
| redis      | 6379           | 6379           | -                      |
| swagger    | 8083           | 8080           | http://localhost:8083  |
| rabbitmq   | 5672<br/>15672 | 5672<br/>15672 | http://localhost:15672 |
| kafka      | 9092<br/>8081  | 9092<br/>8080  | http://lcoalhost:8081  |

## docker-compose 基础命令

```shell
# 在后台启动服务
docker-compose up -d

# 停止并删除服务
docker-compose down 

# 停止服务
docker-compose stop

# 重启服务
docker-compose restart

# 查看服务日志
docker-compose logs

# 查看启动的服务
docker-compose ps  
```
