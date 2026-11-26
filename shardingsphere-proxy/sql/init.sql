-- 在 mysql-server 中执行(代理不会自动建库,物理表也可通过代理 DDL 创建):
-- docker exec -i mysql-server mysql -uroot -proot < shardingsphere-proxy/sql/init.sql

CREATE DATABASE IF NOT EXISTS sharding_db_0 DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE DATABASE IF NOT EXISTS sharding_db_1 DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS sharding_db_0.t_order_0 (
    order_id BIGINT NOT NULL,
    user_id INT NOT NULL,
    status VARCHAR(32) DEFAULT NULL,
    PRIMARY KEY (order_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE IF NOT EXISTS sharding_db_0.t_order_1 LIKE sharding_db_0.t_order_0;

CREATE TABLE IF NOT EXISTS sharding_db_1.t_order_0 LIKE sharding_db_0.t_order_0;

CREATE TABLE IF NOT EXISTS sharding_db_1.t_order_1 LIKE sharding_db_0.t_order_0;