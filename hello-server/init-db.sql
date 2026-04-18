-- 创建数据库 sys_user
CREATE DATABASE sys_user;

-- 连接到 sys_user 后执行以下语句创建表
CREATE TABLE "user" (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE user_info (
    id BIGSERIAL PRIMARY KEY,
    real_name VARCHAR(50),
    phone VARCHAR(20),
    address VARCHAR(200),
    user_id BIGINT NOT NULL UNIQUE REFERENCES "user"(id) ON DELETE CASCADE
);

INSERT INTO "user" (username, password) VALUES
('user1', '123'),
('user2', '456'),
('user3', '789');

INSERT INTO user_info (real_name, phone, address, user_id) VALUES
('张三', '13800000000', '北京市朝阳区', 1),
('李四', '13900000000', '上海市浦东新区', 2),
('王五', '13700000000', '广州市天河区', 3);
